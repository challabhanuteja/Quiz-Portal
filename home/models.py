from django.contrib.auth.models import AbstractUser
from django.db import models
from datetime import datetime, date

class School(models.Model):
    # id_no = models.IntegerField(unique=True)
    school_name = models.CharField(max_length=200)
    address = models.TextField()
    def __str__(self):
        return str(self.pk) + "_" +self.school_name
class Standard(models.Model):
    school = models.ForeignKey(School, verbose_name="School", on_delete=models.CASCADE, default = 1)
    standard_name = models.CharField(max_length=50)
    def __str__(self):
        return str(self.pk) + "_" +self.standard_name
class Section(models.Model):
    standard = models.ForeignKey(Standard, verbose_name="Standard", on_delete=models.CASCADE, default = 1)
    section_name = models.CharField(max_length=50)
    def __str__(self):
        return str(self.pk) + "_" +self.section_name
class QPUser(AbstractUser):
    gender = models.CharField(max_length = 10)
    mobile_number = models.CharField(max_length=10)
    school = models.ForeignKey(School, verbose_name="School", on_delete=models.SET_DEFAULT, default = 1)
    # school_name = school.name
    standard =  models.ForeignKey(Standard, verbose_name="Stadard", on_delete=models.SET_DEFAULT, default = 1)
    section = models.ForeignKey(Section, verbose_name="Section", on_delete=models.SET_DEFAULT, default = 1)
    idno = models.CharField(max_length=10)
    date_of_birth = models.DateField(default = datetime.today)
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

class Quiz(models.Model):
    quiz_id = models.IntegerField(unique = True)
    name = models.CharField(max_length=200)
    date_created = models.DateTimeField(auto_now=True)
    start_time = models.DateTimeField(default = datetime.now)
    quiz_description = models.CharField(max_length=200, default = "Description")
    # end_time = models.DateTimeField(default = (date.today() + datetime.timedelta(days=365)))
    duration = models.IntegerField()
    assigned_to = models.ForeignKey(Standard, verbose_name="Assigned to", on_delete=models.SET_DEFAULT, default = 1)

class MultipleChoiceQuestion(models.Model):
    quiz = models.ForeignKey(Quiz, verbose_name="QuizId", on_delete=models.CASCADE)
    question_no = models.IntegerField(unique=True)
    question = models.TextField()
    option1 = models.CharField(max_length=100)
    option2 = models.CharField(max_length=100)
    option3 = models.CharField(max_length=100)
    option4 = models.CharField(max_length=100)
    answer = models.CharField(max_length = 100)







    
     

