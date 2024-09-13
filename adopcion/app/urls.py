from django.urls import path
from app.views import index, contacto

urlpatterns = [
    path('', index, name="index"),
    path('contacto/', contacto, name="contacto")
    # path('formulario/', formulario, name="formulario"),
    # path('contacto/', contacto, name="contacto"),
    # path('formulario/', formulario, name='formulario'),
    # path('success/', TemplateView.as_view(template_name='app/success.html'), name='success'),
]