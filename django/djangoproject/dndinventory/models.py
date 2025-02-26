import uuid

from django.db import models
from django.db.models import Model 
from django.core.validators import MaxValueValidator, MinValueValidator, StepValueValidator
from datetime import datetime
from django.contrib.auth.models import User


def coin_string(amount):
    out = ""
    current_price = amount
    small_number = 1e-09
    
    if current_price >= 1.0 - small_number:
       gold = int(current_price)
       out += f"{gold}g"
    
    current_price *= 10
    current_price %= 10
       
    if current_price >= 1.0 - small_number:
       silver = int(current_price)
       out += f"{silver}s"
       
    current_price *= 10
    current_price %= 10
       
    if current_price >= 1.0 - small_number:
       copper = int(current_price)
       out += f"{copper}s"
       
    return out

# DO NOT REMOVE! NEEDED FOR MIGRATIONS
def get_admin():
    return 1

class Character(models.Model):
    name = models.CharField(max_length=100, null=False)
    
    user = models.ForeignKey(
        User, null=False, on_delete=models.CASCADE, db_index=True
    )
    
    def get_inventories(self):
        return Inventory.objects.filter(character=self)
        
    inventories = property(get_inventories)

    def __str__(self):
        return "<Character \"{}\" belonging to \"{}\">".format(
            self.name, self.user.username
        )


class Inventory(models.Model):
    character = models.ForeignKey(
        Character, null=False, on_delete=models.CASCADE
    )
    name = models.CharField(max_length=40, null=False, default="Inventory")

    class Meta:
        verbose_name_plural = "Inventories"
        constraints = [
            models.UniqueConstraint(
                fields=['character', 'name'], name='combination_character_inventory_name'
            )
        ]

    def __str__(self):
        return f"<Inventory \"{self.name}\" of character \"{self.character.name}\">"
        
    def get_items(self):
        return Item.objects.filter(inventory=self)
        
    items = property(get_items)


class Equipment(models.Model):
    #TODO Add unique constraint on both.
    category = models.CharField(max_length=100, null=False)
    name = models.CharField(max_length=100, null=False)
    description = models.CharField(max_length=360, null=True)
    price = models.DecimalField(max_digits=8, decimal_places=2, null=False, default=0)
    weight = models.DecimalField(max_digits=8, decimal_places=1, null=False, default=0)

    class Meta:
        verbose_name_plural = "Equipment"
        constraints = [
            models.UniqueConstraint(
                fields=['category', 'name'], name='unique_category_name'
            )
        ]
        
    
    def get_coins(self):
        return coin_string(self.price)
        
    coins = property(get_coins)

    def __str__(self):
        output = f"<Equipment \"{self.category} - {self.name}\""
        cost_string = self.get_coins()
        if cost_string != "":
            output += f" costing {cost_string}"
        if self.weight > 0.0:
           output += f" weighing {self.weight.normalize()}lbs" 
        output += ">"
        return output
        
    def get_properties(self):
        return EquipmentProperty.objects.filter(equipment=self)
        
    properties = property(get_properties)
    
    def equipment_has_description(self):
        return self.description != None
        
    has_description = property(equipment_has_description)
     
    
    def save(self, *args, **kwargs):
         if not self.description:
              self.description = None
         super(Equipment, self).save(*args, **kwargs)
        
class EquipmentProperty(models.Model):
    id        = models.AutoField (primary_key=True)
    equipment = models.ForeignKey(Equipment, null=False, on_delete=models.CASCADE, db_index=True)
    property  = models.CharField (max_length=20, null=False)
    value     = models.CharField (max_length=20, null=True)

    class Meta:
        verbose_name_plural = "Equipment Properties"
        constraints = [
            models.UniqueConstraint(
                fields=['equipment', 'property'], name='combination_equipment_property'
            )
        ]

    def __str__(self):
        if self.value != None:
            return f"<Equipment Property of \"{self.equipment.category} - {self.equipment.name}\" : {self.property} = {self.value}>"
        return f"<Equipment Property of \"{self.equipment.category} - {self.equipment.name}\" : {self.property}>"
        
    
    def save(self, *args, **kwargs):
         if not self.value:
              self.value = None
         super(EquipmentProperty, self).save(*args, **kwargs)
        
class Weapon(models.Model):
    equipment  = models.OneToOneField(Equipment, on_delete=models.CASCADE, primary_key=True)
    
    die_rolls  = models.SmallIntegerField(
        null=False, 
        default=1,
        validators=[
            MaxValueValidator(2),
            MinValueValidator(0)
        ]
    )
    damage_die = models.SmallIntegerField(
        null=False, 
        default=6, 
        validators=[
            MaxValueValidator(12),
            MinValueValidator(0)
        ]
    )
    strength   = models.BooleanField(null=False, default=False)
    dexterity  = models.BooleanField(null=False, default=False)
    
    def get_modifier(self):
        if not self.strength:
            return "DEX"
        if not self.dexterity:
            return "STR"
        return "STR or DEX"
    
    modifier = property(get_modifier)
    
    def get_dice(self):
        if self.damage_die <= 0:
            return "None"
        if self.die_rolls < 1:
            return f"{self.damage_die}"
            
        return f"{self.die_rolls}d{self.damage_die}"
        
    dice = property(get_dice)

    def get_damage(self):
        if self.damage_die <= 0:
            return "None"
        if self.die_rolls < 1:
            return f"{self.damage_die}"
            
        return f"{self.die_rolls}d{self.damage_die} + " + self.get_modifier()
        
    damage = property(get_damage)

    def __str__(self):
        return f"<Weapon \"{self.equipment.category} - {self.equipment.name}\" : {self.get_damage()}>"

class Item(models.Model):
    inventory = models.ForeignKey(
        Inventory, null=False, on_delete=models.CASCADE, db_index=True
    )
    equipment = models.ForeignKey(
        Equipment, null=True, on_delete=models.SET_NULL
    )
    
    order = models.IntegerField(blank = True, null = True)
    
    date_acquired = models.DateTimeField(default=datetime.now, blank=True)
    
    quantity = models.IntegerField(
        null=False, default=1, 
        validators=[
            MinValueValidator(1)
        ]
    )
    
    custom_category = models.CharField(max_length=100, null=True)
    custom_name     = models.CharField(max_length=100, null=True)
    
    custom_price  = models.DecimalField(max_digits=8, decimal_places=4, null=True)
    custom_weight = models.DecimalField(max_digits=8, decimal_places=1, null=True)
    
    class Meta:
        ordering = ('order',)
    
    def get_category(self):
        if self.custom_category != None:
            return self.custom_category
        if self.equipment:
            return self.equipment.category
        return "ERROR"
    
    def get_name(self):
        if self.custom_name != None:
            return self.custom_name
        if self.equipment:
            return self.equipment.name
        return "ERROR"
        
    
    category = property(get_category)
    name     = property(get_name)
    
    def get_price(self):
        if self.custom_price != None:
            return self.custom_price
        if self.equipment:
            return self.equipment.price
        return 0
        
    def get_coins(self):
        return coin_string(self.get_price() * self.quantity)
        
    def get_weight(self):
        if self.custom_weight != None:
            return self.custom_weight
        if self.equipment:
            return self.equipment.weight
        return 0
    
    price  = property(get_price)
    weight = property(get_weight)
    
    coins  = property(get_coins)
    
    def __str__(self):
        return f"<Item \"{self.get_category()} - {self.get_name()}\" of Character \"{self.inventory.character.name}\" in \"{self.inventory.name}\" acquired on {self.date_acquired.date()}>"

    
    def get_properties(self):
        if self.equipment == None:
            return []
        return self.equipment.properties
        
    properties = property(get_properties)
    
    def get_weapon(self):
        if self.equipment == None:
            return None
        return Weapon.objects.get(pk=self.equipment)
        
    def has_weapon_stats(self):
        if self.equipment == None:
            return False
        return Weapon.objects.filter(equipment=self.equipment).exists()
        
    weapon = property(get_weapon)
    is_weapon = property(has_weapon_stats)
    
    def item_has_description(self):
        return self.equipment != None and self.equipment.description != None
        
    has_description = property(item_has_description)
    
    def get_item_description(self):
        if not self.item_has_description():
            return ""
        return self.equipment.description
        
    description = property(get_item_description)
    
    def save(self, *args, **kwargs):
         no_equipment = False
         if not self.equipment:
              no_equipment = True
              self.equipment = None
         if not self.custom_category:
              self.custom_category = "Custom" if no_equipment else None
         if not self.custom_name:
              self.custom_name = "Item" if no_equipment else None
         if not self.custom_price:
              self.custom_price = None
         if not self.custom_weight:
              self.custom_weight = None
         super(Item, self).save(*args, **kwargs)
