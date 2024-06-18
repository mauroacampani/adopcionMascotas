from django.urls import path
from mascotas.views import index, listadoMascotas

urlpatterns = [
    path('', index, name="index"),
    path('listadoMascotas/', listadoMascotas, name="listadoMascotas"),
]