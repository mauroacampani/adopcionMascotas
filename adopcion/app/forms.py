from django import forms


CHOICES = [
        ('1', 'Si, es grande'),
        ('2', 'Si, es chico'),
        ('3', 'NO'),
    ]

CHOICES1 = [
        ('1', 'SI'),
        ('2', 'NO'),
    ]

class FormAdopcion(forms.Form):
    nombre = forms.CharField(max_length=50)
    apellido = forms.CharField(max_length=50)
    email = forms.CharField(max_length=150)
    telefono = forms.CharField(max_length=50)
    dni = forms.IntegerField()
    direccion = forms.CharField(max_length=150)
    patio = forms.ChoiceField(choices=CHOICES, widget=forms.RadioSelect(), label='Tiene patio?')
    mascotas = forms.ChoiceField(choices=CHOICES1, widget=forms.RadioSelect(), label='Tiene otras mascotas?')
    tiene_mascotas = forms.CharField(max_length=150, widget=forms.Textarea(), label='En caso de tener mascotas, idique que mascota y cuantas?', required=False)
    
