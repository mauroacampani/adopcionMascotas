from django.urls import path
from mascotas.views import listadoMascotas, registroMascotas, index, formulario, detalle
from django.views.generic import TemplateView

urlpatterns = [
    path('', index, name="index"),
    path('listadoMascotas/', listadoMascotas, name="listadoMascotas"),
    path('registroMascotas/', registroMascotas, name="registroMascotas"),
    path('formulario/', formulario, name='formulario'),
    path('success/', TemplateView.as_view(template_name='app/success.html'), name='success'),
    path('detalle/<id>', detalle, name='detalle'),
]