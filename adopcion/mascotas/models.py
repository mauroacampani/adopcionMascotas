from django.db import models

from adopcion.settings import MEDIA_URL, STATIC_URL


opciones = [
    ['SI', 'SI'],
    ['NO', 'NO'],
]

estado = [
    ['Adoptado', 'Adoptado'],
    ['En adopcion', 'En adopcion'],
]

sexo = [
    ['Macho', 'Macho'],
    ['Hembra', 'Hembra'],
]

# Create your models here.
class Mascotas(models.Model):
    nombre = models.CharField(max_length=150)
    edad = models.IntegerField()
    sexo = models.CharField(choices=sexo, max_length=50)
    vacuna = models.CharField(choices=opciones, max_length=50)
    desparacitado = models.CharField(choices=opciones, max_length=50)
    estado = models.CharField(choices=estado, max_length=100)
    castrado = models.CharField(choices=opciones, max_length=50)
    caracteristicas = models.CharField(max_length=150)
    imagen = models.ImageField(upload_to='mascotas/', null=True, blank=True)

    def get_imagen(self):
        if self.imagen:
            return '{}{}'.format(MEDIA_URL, self.imagen)
        return '{}{}'.format(STATIC_URL, 'app/img/usuarios/iconoper.jpg')

    class Meta:
        verbose_name = 'Mascota'
        verbose_name_plural = 'Mascotas'
 

    def __str__(self):
        return f'{self.id}'