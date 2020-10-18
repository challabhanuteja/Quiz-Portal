from django.contrib.auth.models import AbstractUser
from django.db import models

class QPUser(AbstractUser):
    gender = models.CharField(max_length = 10)
    mobile_number = models.CharField(max_length=10)
    school_name = models.CharField(max_length=50)
    idno = models.CharField(max_length=10, unique=True)
    is_teacher = models.BooleanField(default=False)
    is_student = models.BooleanField(default=False)
    class Meta:
        verbose_name = 'User'
        verbose_name_plural = 'Users'
    def __str__(self):
        if self.is_student == True:
            return "S"+"-"+self.idno+"-"+self.first_name+"-"+self.last_name
        elif self.is_teacher == True:
            return "T"+"-"+self.idno+"-"+self.first_name+"-"+self.last_name
        else:
            return "Admin"
    

# class Teacher(User):
#     gender = models.CharField(max_length = 10)
#     school_name = models.CharField(max_length=50)
#     idno = models.CharField(max_length=10, primary_key=True)
#     class Meta:
#         verbose_name = 'Teacher'
#         verbose_name_plural = 'Teachers'
#     def __str__(self):
#         return self.idno+"-"+self.first_name+"-"+self.last_name
    
     

