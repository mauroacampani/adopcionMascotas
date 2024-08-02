from django.urls import path
from mascotas.views import listadoMascotas, registroMascotas, mascotas, formulario, detalle, editarMascota, eliminarMascota
from django.views.generic import TemplateView

urlpatterns = [
    path('mascotas/', mascotas, name="mascotas"),
    path('listadoMascotas/', listadoMascotas, name="listadoMascotas"),
    path('registroMascotas/', registroMascotas, name="registroMascotas"),
    path('formulario/', formulario, name='formulario'),
    path('success/', TemplateView.as_view(template_name='app/success.html'), name='success'),
    path('detalle/<id>', detalle, name='detalle'),
    path('editarMascota/<id>', editarMascota, name='editarMascota'),
    path('eliminarMascota/<id>', eliminarMascota, name='eliminarMascota'),
]