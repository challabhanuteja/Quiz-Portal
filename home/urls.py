from django.contrib import admin
from django.urls import path, include
from home import views
from django.conf import settings
from django.conf.urls.static import static
from django.conf.urls import url
from django.views.static import serve

urlpatterns = [
    path('', views.index, name="views"),
    path('user-login/', views.userLogin, name = "userLogin"),
    path('create-new-account/', views.createNewAccount, name = "createNewAccount"),
    path('create-student-account/', views.createStudentAccount, name = "createStudentAccount"),
    path('create-teacher-account/', views.createTeacherAccount, name = "createTeacherAccount"),
    path('contact-us/', views.contactUs, name="contactUs"),
    path('user-account/', views.userAccount, name="userAccount"),
    path('about-us/', views.aboutUs, name="aboutUs"),
    path('user-logout/', views.userLogout, name="userLogout"),
    path('user-dashboard/', views.userDashboard, name="userDashboard"),
    path('edit-user-account/', views.editUserAcc, name="editUserAcc"),
    path('create-new-quiz/', views.create_new_quiz, name = "create_new_quiz"),
    path('print-message/', views.print_message, name = "print-message"),
    path('my-flashcards/', views.my_flashcards, name = "my-flashcards"),
    path('create-new-flashcards/', views.create_new_flashcards, name = "create-new-flashcards"),
    path('download-flashcard-template/', views.download_flashcard_template, name = "download-flashcard-template"),
    path('download-mcq-template/', views.download_mcq_template, name = "download-mcq-template"),
    path('<single_slug>/', views.single_slug, name="single_slug"),
]
