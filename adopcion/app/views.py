from django.shortcuts import render
from django.contrib.auth.decorators import login_required
# from app.forms import FormAdopcion
# from django.template.loader import render_to_string


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

def contacto(request):
    return render(request, 'app/contacto.html')