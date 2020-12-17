from django import forms 
from .models import *
  
class QCUserForm(forms.ModelForm): 
    class Meta: 
        model = QPUser 
        fields = ["first_name", "last_name", 'gender','date_of_birth', 'school', 'section', 'idno', 'email', 'password', 'mobile_number']

class QuizForm(forms.ModelForm):
    class Meta:
        model = Quiz
        fields = ["name", "start_time", "quiz_description", "duration", "assigned_to"]