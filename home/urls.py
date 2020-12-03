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
    path('<single_slug>/', views.single_slug, name="single_slug"),
    url(r'^media/(?P<path>.*)$', serve,{'document_root': settings.MEDIA_ROOT}),
    url(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),
    # url(r'^download/(?P<path>.*)$',serve,{'document_root':settings.MEDIA_ROOT}),

]

# if settings.DEBUG:
# 	urlpatterns+=static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)
# 	urlpatterns+=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
