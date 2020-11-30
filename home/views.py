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
from random import randint
import csv
def index(request):
    context = {}
    context["total_users"] = QPUser.objects.all().count()
    context["total_teachers"] = QPUser.objects.filter(is_teacher = True).count()
    context["total_students"] = QPUser.objects.filter(is_student = True).count()
    context["total_schools"] = School.objects.all().count()
    context["total_questions"] = MultipleChoiceQuestion.objects.all().count()
    context["total_quizzes"] = Quiz.objects.all().count()

    return render(request, 'index.html', context)

real_captcha = randint(1,1070)
def userLogin(request):
    global real_captcha
    if request.method == "POST":
        email = request.POST["email"]
        password = request.POST["password"]
        captcha = request.POST["captcha"]
        if captcha == Captcha.objects.get(pk = real_captcha).captcha_input:
            s = authenticate(username = email,password =  password)
            # need to change this code
            if s !=None:
                login(request,s)
                return redirect('/user-dashboard/')
            else:
                messages.warning(request, 'Invalid username or password')
                return redirect("/user-login/")
        else:
            messages.warning(request, 'Invalid captcha')
            real_captcha = randint(1,1070)
            return redirect("/user-login/")
    real_captcha = randint(1,1070)
    context = {"captcha" : Captcha.objects.get(pk = real_captcha).captcha_img}
    return render(request, "user-login.html", context)
def userLogout(request):
    logout(request)
    messages.success(request, 'You have been logged out successfully')
    return redirect("/user-login/")

    
def createNewAccount(request):
    return render(request, "create-new-account.html")
    
def createStudentAccount(request):
    context ={}
    
    global real_captcha
    if request.method == "POST":
        student = QPUser()
        student.first_name = fname = request.POST.get("fname")
        student.last_name = lname = request.POST.get("lname")
        student.gender = gender = request.POST.get("gender")
        student.date_of_birth = dob = request.POST.get("dob")
        school1 = School.objects.get(pk = int(request.POST.get("school")))
        student.school = school1
        standard1 = Standard.objects.filter(school = school1)[0]
        student.standard = standard1
        # print(Section.objects.filter(standard = standard1))
        student.section = Section.objects.filter(standard = standard1)[0]
        student.idno = idno = request.POST.get("idno")
        student.mobile_number = mobile_number = request.POST.get("mobile_number")
        student.email = email = request.POST.get("email")
        student.set_password(request.POST.get('psw1'))
        student.is_student = True
        student.is_teacher = False
        student.username = request.POST.get("email")
        student.date_joined = datetime.today()
        captcha = request.POST["captcha"]
        # print(school1.pk)
        context = {"fname" : fname, "lname" : lname, "gender": gender, "dob" : dob, "school" : school1, "idno": idno, "mobile_number" : mobile_number, "email":email}
        if captcha == Captcha.objects.get(pk = real_captcha).captcha_input:
            student.save()
            messages.success(request, 'You have been registered successfully')
        else:
            messages.success(request, 'Invalid Captcha')
    real_captcha = randint(1,1070)
    context["captcha"] =  Captcha.objects.get(pk = real_captcha).captcha_img
    context["schools"] = School.objects.all()
    return render(request, "create-student-account.html", context)
 #need to add mobile number in teacheraccount   
def createTeacherAccount(request):
    global real_captcha
    context ={}
    
    if request.method == "POST":
        teacher = QPUser()
        teacher.first_name = fname = request.POST.get("fname")
        teacher.last_name = lname = request.POST.get("lname")
        teacher.gender = gender = request.POST.get("gender")
        teacher.date_of_birth = dob = request.POST.get("dob")
        school1 = School.objects.get(pk = int(request.POST.get("school")))
        teacher.school = school1
        standard1 = Standard.objects.filter(school = school1)[0]
        teacher.standard = standard1
        # print(Section.objects.filter(standard = standard1))
        teacher.section = Section.objects.filter(standard = standard1)[0]
        teacher.idno = idno = request.POST.get("idno")
        teacher.mobile_number = mobile_number = request.POST.get("mobile_number")
        teacher.email = email = request.POST.get("email")
        teacher.set_password(request.POST.get('psw1'))
        teacher.is_teacher = True
        teacher.is_student = False
        teacher.username = request.POST.get("email")
        teacher.date_joined = datetime.today()
        captcha = request.POST["captcha"]
        # print(school1.pk)
        context = {"fname" : fname, "lname" : lname, "gender": gender, "dob" : dob, "school" : school1, "idno": idno, "mobile_number" : mobile_number, "email":email}
        if captcha == Captcha.objects.get(pk = real_captcha).captcha_input:
            teacher.save()
            messages.success(request, 'You have been registered successfully')
        else:
            messages.success(request, 'Invalid Captcha')
    real_captcha = randint(1,1070)
    context["captcha"] =  Captcha.objects.get(pk = real_captcha).captcha_img
    context["schools"] = School.objects.all()
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
    # try:
    context  = {}
    if request.user.is_student:
        context["future_quizzes"] = Quiz.objects.filter(assigned_to = request.user.standard, start_time__gte = str(datetime.now().strftime("%Y-%m-%d %H:%M:%S")))
        context["ended_quizzes"] = Quiz.objects.filter(assigned_to = request.user.standard, end_time__lte = str(datetime.now().strftime("%Y-%m-%d %H:%M:%S")))
        context["present_quizzes"] = Quiz.objects.filter(assigned_to = request.user.standard,start_time__lte = str(datetime.now().strftime("%Y-%m-%d %H:%M:%S")), end_time__gte= str(datetime.now().strftime("%Y-%m-%d %H:%M:%S")))
        
    elif request.user.is_teacher: 
        context["future_quizzes"] = Quiz.objects.filter(created_by = request.user, start_time__gte = str(datetime.now().strftime("%Y-%m-%d %H:%M:%S")))
        context["ended_quizzes"] = Quiz.objects.filter(created_by = request.user, end_time__lte = str(datetime.now().strftime("%Y-%m-%d %H:%M:%S")))
        context["present_quizzes"] = Quiz.objects.filter(created_by = request.user,start_time__lte = str(datetime.now().strftime("%Y-%m-%d %H:%M:%S")), end_time__gte= str(datetime.now().strftime("%Y-%m-%d %H:%M:%S")))
        
    
    context["no_of_present_quizzes"] = len(context["present_quizzes"])
    context["no_of_ended_quizzes"] = len(context["ended_quizzes"])
    context["no_of_future_quizzes"] = len(context["future_quizzes"])

        

        # if len(quizzes) == 0:
        #     context["no_quizzes"] = True
    return render(request, "user-dashboard.html", context)
    # except:
    #     return render(request, "user-dashboard.html")

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
    if temp_q[0] == 'quiz':
        quiz1 = Quiz.objects.get(pk = int(temp_q[1]))
        if(request.user.is_teacher == True or request.user.standard == quiz1.assigned_to):
            print(quiz1.start_time <= datetime.now(quiz1.start_time.tzinfo) < quiz1.end_time, quiz1.start_time , datetime.now(quiz1.start_time.tzinfo) , quiz1.end_time)
            if(request.user.is_teacher == True or (quiz1.start_time <= datetime.now() < quiz1.end_time)):
                if request.method == "POST":
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
                            answers_written = set(answers_written)
                            real_answers = set([x for x in real_answers.split(" ~ ")])
                            answers_correct = real_answers & answers_written
                            print("...............................",answers_written - answers_correct)

                            answers_wrong = len(answers_written - answers_correct)
                            answers_correct = len(answers_correct)
                            score += (answers_correct - answers_wrong)/len(real_answers)

                    stemp = None
                    try:
                        stemp = Score.objects.filter(quizid = quiz1).get(qpuser = request.user)
                        if stemp.score< score:
                            stemp.score = score
                            stemp.max_score = len(questions)
                            stemp.save()
                    except:
                        stemp = Score()
                        stemp.quizid = quiz1
                        stemp.qpuser = request.user
                        stemp.score = score
                        stemp.max_score = len(questions)
                        stemp.save()
                    return render(request,"show-student-score.html", context = {"score": stemp, "write" : True, "present_score" : score})
                questions = MultipleChoiceQuestion.objects.filter(quiz = quiz1).order_by("question_no")
                context = {"questions": questions, "quiz": quiz1, "duration": quiz1.duration}
                if len(questions) != 0:
                    return render(request, "write_quiz.html", context)
                else:
                    return HttpResponse("Quiz is not ready yet")
            else:
                return HttpResponse("Quiz is not ready yet or got expired")
        else:
            return HttpResponse("This quiz is not for your standard")
            
    elif temp_q[0] == 'add':
        if request.method == "POST":
            input_file = request.FILES["input_file"]
            
            if file_is_valid_mcq(input_file):
                entries = MultipleChoiceQuestion.objects.filter(quiz_id = int(temp_q[2]))
                entries.delete()
                df = pd.read_excel(input_file, dtype=str)
                for i in range(len(df)):
                    q_no = df.iloc[i,0]
                    q_des = df.iloc[i,1]
                    o1 = df.iloc[i,2]
                    o2 = df.iloc[i,3]
                    o2 = df.iloc[i,3]
                    o3 = df.iloc[i,4]
                    o4 = df.iloc[i,5]
                    ans = df.iloc[i,6]
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
        context ={"quiz_id" : temp_q[2]}
        return render(request, "add-questions.html", context = context)
    elif temp_q[0]=="edit" and temp_q[1]=="quiz":
        if request.method == "POST":
            quiz_obj = Quiz.objects.get(pk = temp_q[2])
            quiz_obj.name = request.POST.get("quiz-name")
            quiz_obj.quiz_description = request.POST.get("quiz_description")
            quiz_obj.assigned_to = Standard.objects.get(pk = request.POST.get("assigned_to"))
            x = request.POST.get("start_time").split("-")
            y = x[2].split("T")
            z = y[1].split(":")
            # print(x[0], x[1], y[0], z[0], z[1])
            st = datetime(int(x[0]), int(x[1]), int(y[0]), int(z[0]), int(z[1]), 0, 0)
            x = request.POST.get("end_time").split("-")
            y = x[2].split("T")
            z = y[1].split(":")
            # print(x[0], x[1], y[0], z[0], z[1])
            et = datetime(int(x[0]), int(x[1]), int(y[0]), int(z[0]), int(z[1]), 0, 0)
            quiz_obj.start_time =  st
            quiz_obj.end_time =  et
            quiz_obj.duration = request.POST.get("duration")
            quiz_obj.save()
            messages.success(request, "Quiz Details Updated Successfully")
            return render(request, "edit_quiz.html")
        quiz_obj = Quiz.objects.get(pk = temp_q[2])
        context = {"quiz" : quiz_obj}
        context["standards"] = Standard.objects.filter(school = request.user.school)
        context["start_time"] = get_bootstrap_format(quiz_obj.start_time)
        context["end_time"] = get_bootstrap_format(quiz_obj.end_time)
        return render(request, "edit_quiz.html", context)
    
    elif temp_q[0] == "view" and temp_q[1] == "quiz" and temp_q[2] == "scores":
        #getting the required scores from the database
        req_scores = Score.objects.filter(quizid = Quiz.objects.get(pk = temp_q[3]))
        context ={"scores" : req_scores, "quiz_id": temp_q[3]}
        return view_quiz_score(request, context)

    elif temp_q[0] == "delete" and temp_q[1] == "quiz":
        entry= Quiz.objects.get(pk = int(temp_q[2]))
        entry.delete()
        return render(request, "delete-quiz.html")
    return HttpResponse("Quiz is not ready yet")

def get_bootstrap_format(x):
    y = str(x.year)+"-"+x.strftime("%m")+"-"+x.strftime("%d")+"T"+x.strftime("%H")+":"+x.strftime("%M")
    return y

def view_quiz_score(request, context):
    if request.user.is_teacher:
        if request.method == "POST":
            items = context["scores"]
            response = HttpResponse(content_type = 'text/csv')
            response["Content-Disposal"] = 'attachment; filename="scores.csv"'

            writer = csv.writer(response, delimiter= ",")
            writer.writerow(["#", "ID No", "Name", "Email", "Score", "Max Score"])
            x = 1
            for obj in items:
                writer.writerow([x, obj.qpuser.idno, obj.qpuser.first_name + " "+ obj.qpuser.last_name, obj.qpuser.email, obj.score, obj.max_score])
                x+=1
            return response
        return render(request, "view-quiz-scores-teacher.html", context = context)
    else:
        try:
            score = Score.objects.get(qpuser = request.user, quizid = context["quiz_id"])
            return render(request,"show-student-score.html", context = {"score": score})
        except:
            return render(request,"show-student-score.html", context = {"did_not_wrote": True})
        

def create_new_quiz(request):
    context = dict()
    context["standards"] = Standard.objects.filter(school = request.user.school)
    if request.method == "POST":
        quiz_obj = Quiz()
        q_name = request.POST.get("quiz-name")
        q_des = request.POST.get("quiz_description")
        x = request.POST.get("start_time").split("-")
        y = x[2].split("T")
        z = y[1].split(":")
        # print(x[0], x[1], y[0], z[0], z[1])
        q_st = datetime(int(x[0]), int(x[1]), int(y[0]), int(z[0]), int(z[1]), 0, 0)
        x = request.POST.get("end_time").split("-")
        y = x[2].split("T")
        z = y[1].split(":")
        # print(x[0], x[1], y[0], z[0], z[1])
        q_et = datetime(int(x[0]), int(x[1]), int(y[0]), int(z[0]), int(z[1]), 0, 0)
        quiz_obj.start_time =  q_st
        quiz_obj.end_time =  q_et
        q_duration = request.POST.get("duration")
        quiz_obj.assigned_to = Standard.objects.get(pk = request.POST.get("assigned_to"))
        if q_duration.isdigit():
            quiz_obj.name = q_name
            quiz_obj.quiz_description = q_des
            quiz_obj.duration = int(q_duration)
            quiz_obj.date_created = date.today()
            quiz_obj.created_by = request.user
            quiz_obj.save()
            messages.success(request, "Quiz Created Successfully")
        else:
            messages.warning(request, "fill all the required details correctly") 
    return render(request, "create-new-quiz.html", context)

