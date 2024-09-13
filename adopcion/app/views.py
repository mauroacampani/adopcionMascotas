from django.shortcuts import render
from django.contrib.auth.decorators import login_required
# from app.forms import FormAdopcion
# from django.template.loader import render_to_string
from django.contrib import messages
from django.core.mail import EmailMessage

# # Create your views here.
def index(request):

    return render(request, 'app/index.html')


# @login_required
# def formulario(request):

#     data={
#         'form': FormAdopcion()
#     }

#     return render(request, 'app/formulario.html', data)


# def contacto(request):
#     if request.method == "POST":
#         nombre = request.POST['nombre']
#         apellido = request.POST['apellido']
#         email = request.POST['email']
#         telefono = request.POST['telefono']
#         dni = request.POST['dni']
#         direccion = request.POST['direccion']
#         patio = request.POST['patio']
#         mascotas = request.POST['mascotas']
#         tiene_mascotas = request.POST['tiene_mascotas']

#         template = render_to_string('app/email.html')

# views.py

from django.core.mail import send_mail
from django.shortcuts import render, redirect
from .forms import ContactForm

def contacto(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            nombre = form.cleaned_data['nombre']
            email = form.cleaned_data['email']
            mensaje = form.cleaned_data['mensaje']
    

            email_message = EmailMessage(
                subject=f'Nuevo mensaje de {nombre}',
                body=f'Nombre: {nombre}\nCorreo electrónico: {email}\n\nMensaje:\n{mensaje}',
                from_email='mauroac26@gmail.com',  # Correo electrónico que aparece como remitente en el correo (EMAIL_HOST_USER)
                to=['mauroac26@gmail.com'],  # Dirección de correo del destinatario (donde recibirás los mensajes)
                reply_to=[email],  # Dirección de correo electrónico del remitente del formulario
            )
            
            email_message.send(fail_silently=False)
            
            messages.add_message(request, messages.SUCCESS, "Mensaje enviado con exito")
            return redirect(to='mascotas')

    else:
        form = ContactForm()

    return render(request, 'app/contacto.html', {'form': form})