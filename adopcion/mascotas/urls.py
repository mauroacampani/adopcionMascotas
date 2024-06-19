from django.urls import path
from mascotas.views import index, listadoMascotas, registroMascotas

urlpatterns = [
    path('', index, name="index"),
    path('listadoMascotas/', listadoMascotas, name="listadoMascotas"),
    path('registroMascotas/', registroMascotas, name="registroMascotas")
]