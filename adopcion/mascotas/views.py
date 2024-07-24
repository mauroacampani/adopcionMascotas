from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from mascotas.models import Mascotas
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from .forms import formMascotas
from django.core.mail import send_mail
from app.forms import FormAdopcion

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




def formulario(request):
    data={
         'form': FormAdopcion()
         }
    
    if request.method == 'POST':
        
        #form = FormAdopcion()
        
        
            
            # nombre = form.cleaned_data['nombre']
            # apellido = form.cleaned_data['apellido']
            # email = form.cleaned_data['email']
            # telefono = form.cleaned_data['telefono']
            # dni = form.cleaned_data['dni']
            # direccion = form.cleaned_data['direccion']
            # patio = form.cleaned_data['patio']
            # mascotas = form.cleaned_data['mascotas']
            # tiene_mascotas = form.cleaned_data['tiene_mascotas']
        nombre = request.POST['nombre']
        apellido = request.POST['apellido']
        email = request.POST['email']
        telefono = request.POST['telefono']
        dni = request.POST['dni']
        direccion = request.POST['direccion']
        patio = request.POST['patio']
        mascotas = request.POST['mascotas']
        tiene_mascotas = request.POST['tiene_mascotas']
        destinatario = 'mauroacampani@gmail.com'  # El email predeterminado
        
        send_mail(
            subject=f'Nuevo mensaje de {nombre}',                                       
            message=[apellido,  # Cuerpo del correo
            telefono,
            dni,
            direccion,
            patio,
            mascotas,
            tiene_mascotas,
            email],
            from_email=email,  # Remitente del correo
            recipient_list=[destinatario],  # Lista de destinatarios
            fail_silently=False,
        )
        return redirect('success')  # Redirige a una página de éxito
    
    return render(request, 'app/formulario.html',data)


def detalle(request, id):
    mascotas = Mascotas.objects.filter(id=id)

    
    data = {
        'mascotas': mascotas
    }


    return render(request, 'mascotas/detalle.html', data)
    