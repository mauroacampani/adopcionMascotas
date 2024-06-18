from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from mascotas.models import Mascotas

# Create your views here.
@login_required
def index(request):

    mascotas = Mascotas.objects.all()

    data = {
        'mascotas': mascotas
    }
    print(mascotas)
    return render(request, 'mascotas/mascotas.html', data)



@login_required
def listadoMascotas(request):

    mascotas = Mascotas.objects.all()

    data = {
        'mascotas': mascotas
    }

    return render(request, 'mascotas/listadoMascotas.html', data)