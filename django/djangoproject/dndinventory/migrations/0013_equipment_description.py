# Generated by Django 4.2.11 on 2024-04-12 14:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dndinventory', '0012_alter_equipment_weight_alter_item_custom_weight'),
    ]

    operations = [
        migrations.AddField(
            model_name='equipment',
            name='description',
            field=models.CharField(max_length=240, null=True),
        ),
    ]
