from django.shortcuts import render, HttpResponse, redirect, Http404
from django.contrib import messages
from django.contrib.auth import authenticate
from django.contrib.auth import logout, login
from datetime import datetime
from home.models import *
from django.core.mail import send_mail
from django.conf import settings
from .forms import *
import pandas as pd
import os

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
        quizzes = {}
        if request.user.is_student:
            quizzes = Quiz.objects.filter(assigned_to = request.user.standard)
        elif request.user.is_teacher:
            quizzes = Quiz.objects.filter(created_by = request.user.pk)
        context = {"quizzes": quizzes}
        if len(quizzes) == 0:
            context["no_quizzes"] = True
        return render(request, "user-dashboard.html", context)
    except:
        return render(request, "user-dashboard.html")

def editUserAcc(request):
    if request.method == "POST":
        fname = request.POST.get("fname")
        lname = request.POST.get("lname")
        gender = request.POST.get("gender")
        school = request.POST.get("school_id")
        section = request.POST.get("section_id")
        idno = request.POST.get("idno")
        email = request.POST.get("email")
        mobile_no = request.POST.get(" mobile_number")
        standard_id = request.POST.get("standard_id")
        user= request.user
        user.first_name = fname
        user.last_name = lname
        user.gender = gender
        user.school = School.objects.get(pk = int(school)) 
        user.section = Section.objects.get(pk = int(section))
        user.standard = Standard.objects.get(pk = int(standard_id)) 
        user.idno = idno
        # user.mobile_number = mobile_no
        user.save()
        messages.success(request, "Your details are updated successfully")
        return redirect("/user-account/")
        
    return render(request, "edit-user-account.html", context = {"user": request.user})
def file_is_valid_mcq(input_file):
    
    file_name = input_file.name.split(".")
    if file_name[1]!="xlsx": #checks the file format
        return False
    x = pd.read_excel(input_file, dtype=str)
    if len(x.columns) != 8: # checks number of columns
        return False
    
    elif(x.iloc[:,6].isnull().sum() != 0): # checks null values
        return False

    return True
def single_slug(request, single_slug):
    temp_q = single_slug.split("-")
    if request.method == "POST":
        if temp_q[0] == 'quiz':
            quiz1 = Quiz.objects.get(pk = int(temp_q[1]))
            questions = MultipleChoiceQuestion.objects.filter(quiz = quiz1)
            context = {"questions": questions, "quiz":quiz1}
            score = 0
            for question in questions:
                if question.is_multiple_ans == "N":
                    if question.answer == request.POST.get("question-"+str(question.pk)):
                        # print(question.answer, request.POST.get("question-"+str(question.pk)))
                        score+=1
                else:
                    answers_written = []
                    if request.POST.get("question-"+str(question.pk)+"-ans-1", None)!=None:
                        answers_written.append(request.POST.get("question-"+str(question.pk)+"-ans-1", None))
                    if request.POST.get("question-"+str(question.pk)+"-ans-2", None)!=None:
                        answers_written.append(request.POST.get("question-"+str(question.pk)+"-ans-2", None))
                    if request.POST.get("question-"+str(question.pk)+"-ans-3", None)!=None:
                        answers_written.append(request.POST.get("question-"+str(question.pk)+"-ans-3", None))
                    if request.POST.get("question-"+str(question.pk)+"-ans-4", None)!=None:
                        answers_written.append(request.POST.get("question-"+str(question.pk)+"-ans-4", None))
                    real_answers = question.answer
                    real_answers = [x for x in real_answers.split(" ~ ")]
                    answers_correct = list(set(real_answers) & set(answers_written))
                    score += len(answers_correct)/len(real_answers)

            try:
                stemp = Score.objects.get(qpuser = request.user)
                if stemp.score< score:
                    stemp.score = score
                    stemp.save()
            except:
                stemp = Score()
                stemp.quizid = quiz1
                stemp.qpuser = request.user
                stemp.score = score
                stemp.max_score = len(questions)
                stemp.save()
            return render(request,"show-student-score.html", context = {"score": score, "max_score": len(questions)})
        elif temp_q[0] == 'add':
            input_file = request.FILES["input_file"]
            
            if file_is_valid_mcq(input_file):
                entries = MultipleChoiceQuestion.objects.filter(quiz_id = int(temp_q[2]))
                entries.delete()
                df = pd.read_excel(input_file, dtype=str)
                for i in range(len(df)):
                    q_no = str(df.iloc[i,0])
                    q_des = str(df.iloc[i,1])
                    o1 = str(df.iloc[i,2])
                    o2 = str(df.iloc[i,3])
                    o2 = str(df.iloc[i,3])
                    o3 = str(df.iloc[i,4])
                    o4 = str(df.iloc[i,5])
                    ans = str(df.iloc[i,6])
                    is_multi_ans = str(df.iloc[i,7])
                    question = MultipleChoiceQuestion()
                    question.question_no = q_no
                    question.question = q_des
                    question.option1 = o1
                    question.option2 = o2
                    question.option3 = o3
                    question.option4 = o4
                    question.answer = ans
                    question.quiz_id = int(temp_q[2])
                    if is_multi_ans == "nan" or is_multi_ans == "N":
                        question.is_multiple_ans = "N"
                    else:
                        question.is_multiple_ans = "Y"
                    question.save()
                messages.success(request, "Questions Uploaded Successfully")
            else:
                messages.warning(request, "Please upload a valid file according to the instructions given above")
            return render(request, "add-questions.html", context = {"quiz_id" : temp_q[2]})

    elif temp_q[0] == 'quiz':
        quiz1 = Quiz.objects.get(pk = int(temp_q[1]))
        questions = MultipleChoiceQuestion.objects.filter(quiz = quiz1).order_by("question_no")
        context = {"questions": questions, "quiz": quiz1, "duration": quiz1.duration}
        if len(questions) != 0:
            return render(request, "write_quiz.html", context)
        else:
            return HttpResponse("Quiz is not ready yet")

    elif temp_q[0] == 'add':
        context ={"quiz_id" : temp_q[2]}
        return render(request, "add-questions.html", context = context)
    elif temp_q[0] == "view" and temp_q[1] == "quiz" and temp_q[2] == "scores":
        #getting the required scores from the database
        req_scores = Score.objects.filter(quizid = Quiz.objects.get(pk = temp_q[3]))
        context ={"scores" : req_scores}
        return view_quiz_score(request, context)
    return HttpResponse("Quiz is not ready yet")

def view_quiz_score(request, context):
    if request.user.is_teacher:

        return render(request, "view-quiz-scores-teacher.html", context = context)

def create_new_quiz(request):
    if request.method == "POST":
        form = QuizForm(request.POST)
        if form.is_valid():
            temp_quiz = Quiz()
            temp_quiz.created_by = request.user
            temp_quiz.date_created = datetime.now
            temp_quiz.start_time = form.cleaned_data["start_time"]
            temp_quiz.assigned_to = form.cleaned_data["assigned_to"]
            temp_quiz.name = form.cleaned_data["name"]
            temp_quiz.quiz_description = form.cleaned_data["quiz_description"]
            temp_quiz.duration = int(form.cleaned_data["duration"])
            temp_quiz.save()
            messages.success(request, "Quiz creted successfully. You can find it in your dashboard")
            return redirect("/create-new-quiz/")
        else:
            messages.warning(request, "fill all the required details") 
    else:
        form   = QuizForm()
    context = {"form":form}
    return render(request, "create-new-quiz.html", context)







