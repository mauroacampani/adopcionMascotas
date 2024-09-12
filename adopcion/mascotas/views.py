from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from mascotas.models import Mascotas
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from .forms import formMascotas
from django.core.mail import send_mail
from app.forms import FormAdopcion
from django.contrib import messages

# Create your views here.
@login_required
def mascotas(request):

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
            post = formulario.save(commit=False)
            image = formulario.cleaned_data['imagen']
            resized_image = handle_uploaded_image(image)

            post.imagen = resized_image

            if formulario.cleaned_data['imagen1']:
                image = formulario.cleaned_data['imagen1']
                resized_image = handle_uploaded_image(image)

                post.imagen1 = resized_image

            if formulario.cleaned_data['imagen2']:
                image = formulario.cleaned_data['imagen2']
                resized_image = handle_uploaded_image(image)

                post.imagen = resized_image
           
            post.save()
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


def editarMascota(request, id):
    
    try:
        mascota = get_object_or_404(Mascotas, pk=id)
        
    except Mascotas.DoesNotExist:
        return render(request, 'app/pages-error-404.html')
    
    if mascota:
    
        data = {
            
            'form': formMascotas(instance=mascota)
        }

        if request.method == "POST":
            formulario = formMascotas(data=request.POST, files=request.FILES, instance=mascota)

            
            if formulario.is_valid():
                
                formulario.save()
                
                messages.add_message(request, messages.SUCCESS, "Se edito la mascota correctamente")
                return redirect(to='listadoMascotas')
            
            else:
                data["form"] = formulario
    else:
        return render(request, 'app/pages-error-404.html')
            
    return render(request, 'mascotas/editarMascota.html', data)
    


def eliminarMascota(request, id):

    # ingreso = get_object_or_404(expedicionQuimica, pk=id)
    try:
        masctota = get_object_or_404(Mascotas, pk=id)
    except Mascotas.DoesNotExist:
        return render(request, 'app/pages-error-404.html')
    if masctota:
        masctota.delete()
        messages.add_message(request, messages.SUCCESS, "Se eliminó la mascota correctamente")
        return redirect(to='listadoMascotas')
    else:
        return render(request, 'app/pages-error-404.html')


from PIL import Image
import io
from django.core.files.uploadedfile import InMemoryUploadedFile


def handle_uploaded_image(image):
    img = Image.open(image)
    img = img.convert('RGB')  # Asegurarse de que esté en formato RGB

    # Redimensionar la imagen
    max_size = (800, 800)  # Ajusta este tamaño según tus necesidades
    img.thumbnail(max_size, Image.LANCZOS)

    # Guardar la imagen en memoria
    img_io = io.BytesIO()
    img.save(img_io, format='JPEG', quality=85)  # Ajusta la calidad según tus necesidades
    img_io.seek(0)

    # Crear un archivo InMemoryUploadedFile
    new_image = InMemoryUploadedFile(
        img_io, 
        None, 
        image.name, 
        'image/jpeg', 
        img_io.getbuffer().nbytes, 
        None
    )
    return new_image
