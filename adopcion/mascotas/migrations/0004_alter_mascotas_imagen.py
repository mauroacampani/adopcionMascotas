# Generated by Django 4.2.13 on 2024-09-12 21:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mascotas', '0003_mascotas_imagen1_mascotas_imagen2_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mascotas',
            name='imagen',
            field=models.ImageField(default=1, upload_to='mascotas/'),
            preserve_default=False,
        ),
    ]