# Generated by Django 4.2.13 on 2024-09-12 22:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mascotas', '0004_alter_mascotas_imagen'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mascotas',
            name='imagen1',
            field=models.ImageField(default=1, upload_to='mascotas/'),
            preserve_default=False,
        ),
    ]
