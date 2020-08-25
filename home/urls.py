from django.contrib import admin
from django.urls import path, include
from home import views
urlpatterns = [
    path('', views.index, name="views"),
    path('student-login/', views.studentLogin, name = "studentLogin"),
    path('teacher-login/', views.teacherLogin, name = "teacherLogin"),
    path('create-new-account/', views.createNewAccount, name = "createNewAccount"),
    path('create-student-account/', views.createStudentAccount, name = "createStudentAccount"),
    path('create-teacher-account/', views.createTeacherAccount, name = "createTeacherAccount"),
    path('contact-us/', views.contactUs, name="contactUs")
]
