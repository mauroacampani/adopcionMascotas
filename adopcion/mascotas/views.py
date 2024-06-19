from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from mascotas.models import Mascotas
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from .forms import formMascotas

# Create your views here.
@login_required
def index(request):

    mascotas = Mascotas.objects.all().order_by('estado')

    page = request.GET.get('page', 1)
    
    paginator = Paginator(mascotas, 8)  #  paginate_by 5
    try:
        mascotas = paginator.page(page)
    except PageNotAnInteger:
        mascotas = paginator.page(1)
    except EmptyPage:
        mascotas = paginator.page(paginator.num_pages)

    return render(request, 'mascotas/mascotas.html', {'mascotas':mascotas})




@login_required
def listadoMascotas(request):

    mascotas = Mascotas.objects.all().order_by('estado')

    data = {
        'mascotas': mascotas
    }


    return render(request, 'mascotas/listadoMascotas.html', data)



from django.shortcuts import render

# Create your views here.
@login_required
def registroMascotas(request):
    
    data = {
        'form': formMascotas()
    }

    if request.method == "POST":
              
        formulario = formMascotas(request.POST, request.FILES)
      
        if formulario.is_valid():
           
           
            
            formulario.save()
            # messages.add_message(request, messages.SUCCESS, "Se registró el ingreso del Agente correctamente")
            return redirect(to='listadoMascotas')
        else:
            data["form"] = formulario

    return render(request, 'mascotas/registroMascotas.html', data)