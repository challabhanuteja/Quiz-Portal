from django.contrib.auth.models import User
from django.db import models
class Student(User):
    gender = models.CharField(max_length = 10)
    school_name = models.CharField(max_length=50)
    idno = models.CharField(max_length=10, primary_key=True)
    class Meta:
        verbose_name = 'Student'
        verbose_name_plural = 'Students'
    def __str__(self):
        return "Student-"+self.idno
    

class Teacher(User):
    gender = models.CharField(max_length = 10)
    school_name = models.CharField(max_length=50)
    idno = models.CharField(max_length=10)
    class Meta:
        verbose_name = 'Teacher'
        verbose_name_plural = 'Teachers'
    def __str__(self):
        return "Teacher"+self.idno
    
     

