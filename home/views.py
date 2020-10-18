from django.shortcuts import render, HttpResponse, redirect
from django.contrib import messages
from django.contrib.auth import authenticate
from django.contrib.auth import logout, login
from datetime import datetime
from home.models import QPUser
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
    
    if request.method == "POST":
        psw1 = request.POST.get("psw1")
        psw2 = request.POST.get("psw2")
        fname = request.POST.get("fname")
        lname = request.POST.get("lname")
        gender = request.POST.get("gender")
        school_name = request.POST.get("school_name")
        idno = request.POST.get("idno")
        email = request.POST.get("email")
        mobile_number = request.POST.get("mobile_number")
        #need to validate mobile number
        if psw1 != psw2:
            messages.warning(request, 'password mismatch')
            context = {
                'fname' : fname,
                'lname' : lname,
                'gender' : gender,
                'school_name' : school_name,
                'idno':idno,
                'email':email
            }
            return render(request, "create-student-account.html",context)
        else:
            # print(fname,sname, gender, school_name, idno, email)
            # return render(request, "create-student-account.html",context)
            student = QPUser()
            student.first_name = fname
            student.last_name = lname
            student.gender = gender
            student.school_name = school_name
            student.idno = idno
            student.mobile_number = mobile_number
            student.email = email
            student.set_password(psw1)
            student.is_student = True
            student.is_teacher = False
            student.username = email
            student.date_joined = datetime.today()
            student.save()
            messages.success(request, 'You have been registered successfully')
    
    return render(request, "create-student-account.html")
 #need to add mobile number in teacheraccount   
def createTeacherAccount(request):
    if request.method == "POST":
        psw1 = request.POST.get("psw1")
        psw2 = request.POST.get("psw2")
        fname = request.POST.get("fname")
        lname = request.POST.get("lname")
        gender = request.POST.get("gender")
        school_name = request.POST.get("school_name")
        idno = request.POST.get("idno")
        email = request.POST.get("email")
        if psw1 != psw2:
            messages.warning(request, 'password mismatch')
            context = {
                'fname' : fname,
                'lname' : lname,
                'gender' : gender,
                'school_name' : school_name,
                'idno':idno,
                'email':email
            }
            return render(request, "create-teacher-account.html",context)
        else:
            # print(fname,sname, gender, school_name, idno, email)
            # return render(request, "create-student-account.html",context)
            teacher = QPUser()
            teacher.first_name = fname
            teacher.last_name = lname
            teacher.gender = gender
            teacher.school_name = school_name
            teacher.idno = idno
            teacher.email = email
            teacher.set_password(psw1)
            teacher.username = email
            teacher.date_joined = datetime.today()
            teacher.is_student = False
            teacher.is_teacher = True
            teacher.save()
            messages.success(request, 'You have been registered successfully')
    return render(request, "create-teacher-account.html")
    

def aboutUs(request):
    return render(request, "about-us.html")
def contactUs(request):
    return render(request, "contact-us.html")

def userAccount(request):
    return render(request, "user-account.html")

def userDashboard(request):
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



