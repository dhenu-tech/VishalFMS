from django.urls import path
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

app_name= 'main'

urlpatterns = [
    path('', views.userlogin, name='userlogin'),
    path('dashboard',views.dashboard, name='dashboard'),
    path('upload/<int:dept_id>',views.upload,name='upload'),
    path('orgdashboard/<int:dept_id>',views.Orgdashboard,name='orgdashboard'),
    path('view/<int:dept_id>',views.view,name='view'),
    path('settings',views.settings,name='settings'),
    path('logout',views.logout_view,name='logout'),
    path('usercreation',views.signup,name='usercreation'),
    path('userdepartmentmapping',views.userDepartmentMapping,name='userdepartmentmapping'),
    path('changepass',views.changepass,name='changepass'),
    path('usersettings',views.usersettings,name='usersettings'),
    path('userprofileupdate',views.userProfileUpdate,name="userprofileupdate"),
    path('deleteuser',views.deleteuser,name="deleteuser")
    
]


urlpatterns += staticfiles_urlpatterns()