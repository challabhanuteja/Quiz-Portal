from django.contrib import admin
from django.urls import path, include
from home import views
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
    path('<single_slug>/', views.single_slug, name="single_slug"),

]
