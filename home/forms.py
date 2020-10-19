# import form class from django 
from django import forms 
  
# import GeeksModel from models.py 
from .models import *
  
# create a ModelForm 
class QCUserForm(forms.ModelForm): 
    # specify the name of model to use 
    class Meta: 
        model = QPUser 
        fields = ["first_name", "last_name", 'gender','date_of_birth', 'school', 'section', 'idno', 'email', 'password', 'mobile_number']