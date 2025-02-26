from django.contrib import admin

from .models import Character, Inventory, Item, Equipment, EquipmentProperty, Weapon

admin.site.register(Character)
admin.site.register(Inventory)



class EquipmentAdmin(admin.ModelAdmin):

    def get_form(self, request, obj=None, **kwargs):
        form = super(EquipmentAdmin, self).get_form(request, obj, **kwargs)
        form.base_fields['description'].required = False
        return form

admin.site.register(Equipment, EquipmentAdmin)


admin.site.register(Weapon)

class ItemAdmin(admin.ModelAdmin):

    def get_form(self, request, obj=None, **kwargs):
        form = super(ItemAdmin, self).get_form(request, obj, **kwargs)
        form.base_fields['custom_category'].required = False
        form.base_fields['custom_name'].required = False
        form.base_fields['custom_price'].required = False
        form.base_fields['custom_weight'].required = False
        form.base_fields['equipment'].required = False
        return form

admin.site.register(Item, ItemAdmin)

class EquipmentPropertyAdmin(admin.ModelAdmin):

    def get_form(self, request, obj=None, **kwargs):
        form = super(EquipmentPropertyAdmin, self).get_form(request, obj, **kwargs)
        form.base_fields['value'].required = False
        return form

admin.site.register(EquipmentProperty, EquipmentPropertyAdmin)