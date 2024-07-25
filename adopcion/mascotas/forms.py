from django import forms
from .models import Mascotas

class formMascotas(forms.ModelForm):
 
    class Meta:
        model = Mascotas
        
        fields = '__all__'

        widgets = {
            'caracteristicas': forms.Textarea(attrs={'class': 'form-control form-control-sm', 'rows': 3, 'id': 'caracteristicas'}),
        }