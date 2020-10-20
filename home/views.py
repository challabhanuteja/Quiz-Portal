from django.shortcuts import render, HttpResponse, redirect
from django.contrib import messages
from django.contrib.auth import authenticate
from django.contrib.auth import logout, login
from datetime import datetime
from home.models import *
from django.core.mail import send_mail
from django.conf import settings
from .forms import QCUserForm

def index(request):
    return render(request, 'index.html')

def userLogin(request):
    if request.method == "POST":
        email = request.POST["email"]
        password = request.POST["password"]
        s = authenticate(username = email,password =  password)
        # need to change this code
        if s !=None:
            login(request,s)
            return redirect('/user-dashboard/')
        else:
            messages.warning(request, 'Invalid username or password')
            return redirect("/user-login/")
    return render(request, "user-login.html")
def userLogout(request):
    logout(request)
    messages.success(request, 'You have been logged out successfully')
    return redirect("/user-login/")

    
def createNewAccount(request):
    return render(request, "create-new-account.html")
    
def createStudentAccount(request):
    context ={} 
  
    # create object of form 
    form = QCUserForm(request.POST) 
    if request.method == "POST":  
        if form.is_valid(): 
            student = QCUserForm() 
            student = QPUser()
            student.first_name = form.cleaned_data['first_name']
            student.last_name = form.cleaned_data['last_name']
            student.gender = form.cleaned_data['gender']
            student.school = form.cleaned_data['school']
            student.idno = form.cleaned_data['idno']
            student.mobile_number = form.cleaned_data['mobile_number']
            student.email = form.cleaned_data['email']
            student.set_password(form.cleaned_data['password'])
            student.is_student = True
            student.is_teacher = False
            student.username = student.email
            student.date_joined = datetime.today()
            student.date_of_birth = form.cleaned_data['date_of_birth']
            student.save()
            messages.success(request, 'You have been registered successfully')
    context['form']= form 
    # if request.method == "POST":
    #     psw1 = request.POST.get("psw1")
    #     psw2 = request.POST.get("psw2")
    #     fname = request.POST.get("fname")
    #     lname = request.POST.get("lname")
    #     gender = request.POST.get("gender")
    #     school_name = request.POST.get("school_name")
    #     idno = request.POST.get("idno")
    #     email = request.POST.get("email")
    #     mobile_number = request.POST.get("mobile_number")
    #     #need to validate mobile number
    #     if psw1 != psw2:
    #         messages.warning(request, 'password mismatch')
    #         context = {
    #             'fname' : fname,
    #             'lname' : lname,
    #             'gender' : gender,
    #             'school_name' : school_name,
    #             'idno':idno,
    #             'email':email
    #         }
    #         return render(request, "create-student-account.html",context)
    #     else:
    #         # print(fname,sname, gender, school_name, idno, email)
    #         # return render(request, "create-student-account.html",context)
    #         student = QPUser()
    #         student.first_name = fname
    #         student.last_name = lname
    #         student.gender = gender
    #         student.school_name = school_name
    #         student.idno = idno
    #         student.mobile_number = mobile_number
    #         student.email = email
    #         student.set_password(psw1)
    #         student.is_student = True
    #         student.is_teacher = False
    #         student.username = email
    #         student.date_joined = datetime.today()
    #         student.save()
    #         messages.success(request, 'You have been registered successfully')
    
    return render(request, "create-student-account.html", context)
 #need to add mobile number in teacheraccount   
def createTeacherAccount(request):
    context ={} 
    form = QCUserForm(request.POST) 
    if request.method == "POST":  
        if form.is_valid(): 
            teacher = QCUserForm() 
            teacher = QPUser()
            teacher.first_name = form.cleaned_data['first_name']
            teacher.last_name = form.cleaned_data['last_name']
            teacher.gender = form.cleaned_data['gender']
            teacher.school = form.cleaned_data['school']
            teacher.idno = form.cleaned_data['idno']
            teacher.mobile_number = form.cleaned_data['mobile_number']
            teacher.email = form.cleaned_data['email']
            teacher.set_password(form.cleaned_data['password'])
            teacher.is_student = False
            teacher.is_teacher = True
            teacher.username = teacher.email
            teacher.date_joined = datetime.today()
            teacher.date_of_birth = form.cleaned_data['date_of_birth']
            teacher.save()
            messages.success(request, 'You have been registered successfully')
    context['form']= form 
    # if request.method == "POST":
    #     psw1 = request.POST.get("psw1")
    #     psw2 = request.POST.get("psw2")
    #     fname = request.POST.get("fname")
    #     lname = request.POST.get("lname")
    #     gender = request.POST.get("gender")
    #     school_name = request.POST.get("school_name")
    #     idno = request.POST.get("idno")
    #     email = request.POST.get("email")
    #     if psw1 != psw2:
    #         messages.warning(request, 'password mismatch')
    #         context = {
    #             'fname' : fname,
    #             'lname' : lname,
    #             'gender' : gender,
    #             'school_name' : school_name,
    #             'idno':idno,
    #             'email':email
    #         }
    #         return render(request, "create-teacher-account.html",context)
    #     else:
    #         # print(fname,sname, gender, school_name, idno, email)
    #         # return render(request, "create-student-account.html",context)
    #         teacher = QPUser()
    #         teacher.first_name = fname
    #         teacher.last_name = lname
    #         teacher.gender = gender
    #         teacher.school_name = school_name
    #         teacher.idno = idno
    #         teacher.email = email
    #         teacher.set_password(psw1)
    #         teacher.username = email
    #         teacher.date_joined = datetime.today()
    #         teacher.is_student = False
    #         teacher.is_teacher = True
    #         teacher.save()
    #         messages.success(request, 'You have been registered successfully')
    return render(request, "create-teacher-account.html",context)
    

def aboutUs(request):
    return render(request, "about-us.html")
def contactUs(request):
    if request.method == 'POST':
        s_email = request.POST.get("sender_email")
        s_name = request.POST.get("sender_name")
        s_message = request.POST.get("message_sent")
        # print(s_email, s_message, s_name)
        send_mail(
            subject= s_email+" "+s_name,
            message= s_message,
            from_email= settings.EMAIL_HOST_USER,
            recipient_list=[settings.EMAIL_HOST_USER],
        )
        send_mail(
            subject= "Acknowledgement for "+s_email+" "+s_name,
            message= s_message,
            from_email= settings.EMAIL_HOST_USER,
            recipient_list=[s_email],
        )
    return render(request, "contact-us.html")

def userAccount(request):
    return render(request, "user-account.html")

def userDashboard(request):
    try:
        quizzes = Quiz.objects.filter(assigned_to = request.user.standard)
        context = {"quizzes": quizzes}
        return render(request, "user-dashboard.html", context)
    except:
        return render(request, "user-dashboard.html")

def editUserAcc(request):
    if request.method == "POST":
        fname = request.POST.get("fname")
        lname = request.POST.get("lname")
        gender = request.POST.get("gender")
        school_name = request.POST.get("school_name")
        idno = request.POST.get("idno")
        email = request.POST.get("email")
        user= request.user
        user.first_name = fname
        user.last_name = lname
        user.gender = gender
        user.school_name = school_name
        user.idno = idno
        user.save()
        messages.success(request, "Your details are updated successfully")
        return redirect("/user-account/")
        
    return render(request, "edit-user-account.html")

def single_slug(request, single_slug):
    temp_q = single_slug.split("-")
    if temp_q[0] == 'quiz':
        questions = MultipleChoiceQuestion.objects.filter(quiz = Quiz.objects.get(pk = int(temp_q[1])))
        context = {"questions": questions}
        if len(questions) != 0:
            return render(request, "write_quiz.html", context)
        else:
            return HttpResponse("Quiz is not ready yet")
    return HttpResponse("Quiz is not ready yet")





