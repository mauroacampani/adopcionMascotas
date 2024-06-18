from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from mascotas.models import Mascotas
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage

# Create your views here.
@login_required
def index(request):

    mascotas = Mascotas.objects.all()
    listaMascotas = []

    
    for m in mascotas:
        dicDatos={}
        dicDatos['id'] = m.id
        dicDatos['nombre'] = m.nombre
        dicDatos['edad'] = m.edad
        dicDatos['sexo'] = m.sexo
        dicDatos['vacuna'] = m.vacuna
        dicDatos['desparacitado'] = m.desparacitado
        dicDatos['estado'] = m.estado
        dicDatos['caracteristicas'] = m.caracteristicas
        dicDatos['imagen'] = m.imagen

        listaMascotas.append(dicDatos)
    page = request.GET.get('page', 1)
    
    paginator = Paginator(listaMascotas, 8)  #  paginate_by 5
    try:
        listaMascotas = paginator.page(page)
    except PageNotAnInteger:
        listaMascotas = paginator.page(1)
    except EmptyPage:
        listaMascotas = paginator.page(paginator.num_pages)

    return render(request, 'mascotas/mascotas.html', {'mascotas':listaMascotas})




@login_required
def listadoMascotas(request):

    mascotas = Mascotas.objects.all()

    data = {
        'mascotas': mascotas
    }


    return render(request, 'mascotas/listadoMascotas.html', data)