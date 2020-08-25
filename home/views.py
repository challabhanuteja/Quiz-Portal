from django.shortcuts import render, HttpResponse
from django.contrib import messages
from datetime import datetime
from home.models import Student, Teacher
def index(request):
    return render(request, 'index.html')

def studentLogin(request):
    return render(request, "student-login.html")

def teacherLogin(request):
    return render(request, "teacher-login.html")
    
def createNewAccount(request):
    return render(request, "create-new-account.html")
    
def createStudentAccount(request):
    
    if request.method == "POST":
        psw1 = request.POST.get("psw1")
        psw2 = request.POST.get("psw2")
        if psw1 != psw2:
            messages.warning(request, 'password mismatch')
        else:
            fname = request.POST.get("fname")
            lname = request.POST.get("lname")
            gender = request.POST.get("gender")
            school_name = request.POST.get("school_name")
            idno = request.POST.get("idno")
            email = request.POST.get("email")
            # print(fname,sname, gender, school_name, idno, email)
            student = Student()
            student.first_name = fname
            student.last_name = lname
            student.gender = gender
            student.school_name = school_name
            student.idno = idno
            student.email = email
            student.set_password = psw1
            student.username = email
            student.date_joined = datetime.today()
            student.save()
            messages.success(request, 'You have been registered successfully')
    return render(request, "create-student-account.html")
    
def createTeacherAccount(request):
    return render(request, "create-teacher-account.html")

def contactUs(request):
    return render(request, "contact-us.html")
