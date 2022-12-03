from typing import Reversible
from django.contrib.auth.hashers import check_password, make_password
from django.contrib.auth import authenticate, login, logout
from django.core.files.storage import FileSystemStorage
from django.shortcuts import redirect, render
from .models import Department, DepartmentUserMapping, UploadedFile, Member
 

def userlogin(request):
    if request.method == 'POST':
        # Process the request if posted data are available
        username = request.POST['username']
        password = request.POST['password']
        # Check username and password combination if correct
        print(username,password )
        user = authenticate(username=username, password=password)
        print(user)
        if user is not None:
            # Save session as cookie to login the user
            login(request, user)
            # Success, now let's login the user.
            return redirect('main:dashboard')
        else:
            # Incorrect credentials, let's throw an error to the screen.
            return render(request, 'index.html', {'error_message': 'Incorrect username and / or password.'})
    else:
        # No post data availabe, let's just show the page to the user.
        return render(request, 'index.html')


def dashboard(request):
    if request.method == "GET":
        context_user = request.user
        context_department = DepartmentUserMapping.objects.filter(user=context_user)
        # context_department_info =Department.objects.filter(name=context_department)
        context_uploadedfiles = UploadedFile.objects.filter(uploaded_by=context_user)
        context={
            "departments": context_department,
            # "departments_info": context_department_info,
            "uploaded_files":context_uploadedfiles,
        }
        print(context_department)
        return render(request,'dashboard.html',context)


def Orgdashboard(request,dept_id):
    if request.method == "GET":
        context_user = request.user
        context_department = DepartmentUserMapping.objects.filter(user=context_user)
        context_depart_name=depart_name = Department.objects.get(id=dept_id)
        context_uploadedfiles = UploadedFile.objects.filter(uploaded_by=context_user,department=context_depart_name)

        context={
            "departments": context_department,
            "filesuploadeds":context_uploadedfiles,
        }
        return render(request,'orgdash.html',context)


def upload(request,dept_id):
    print(dept_id)
    if request.method == "GET":
        context_user = request.user
        context_department = DepartmentUserMapping.objects.filter(user=context_user)
       
        context={
            "departments": context_department,
            "dept_id": dept_id 
        }
        return render(request,'upload.html',context)
    if request.method == "POST" and request.FILES['upload']:
        depart_name = Department.objects.get(id=dept_id)
        subject = request.POST.get('subject')
        comment = request.POST.get('comment')
        uploadfile = request.FILES['upload']
        fss = FileSystemStorage()
        file = fss.save(uploadfile.name, uploadfile)
        print(file)
        UploadedFile.objects.create(title=subject,department= depart_name,uploaded_by=request.user,comment=comment,file=file)
        return redirect('main:dashboard')

def view(request,dept_id):
    if request.method == "GET":
        context_user = request.user
        context_department = DepartmentUserMapping.objects.filter(user=context_user)
        context_uploadedfiles = UploadedFile.objects.filter(uploaded_by=context_user)

        context={
            "departments": context_department,
            "filesuploadeds":context_uploadedfiles,
        }
        return render(request,'orgview.html',context)

def settings(request):
    if request.method == "GET":
        context_user = request.user
        context_department = DepartmentUserMapping.objects.filter(user=context_user)
        context_alluser = Member.objects.all()
        context={
            "departments": context_department,
            "user":context_alluser
            # "filesuploadeds":context_uploadedfiles,
        }
        return render(request,'settings.html',context)


def logout_view(request):
    logout(request)
    return redirect('main:userlogin')

def userDepartmentMapping(request):
    if request.method == "POST":
        mapping_user = request.POST.get('userselected')
        mapping_dept = request.POST.get('departmentselected')
        print(mapping_user)
        print(mapping_dept)
       
        DepartmentUserMapping.objects.create(department_id=mapping_dept,user_id=mapping_user,is_approved = True,is_reviewed=True)
        return redirect('main:settings')

def signup(request):
    if request.method == "POST":
        if request.POST['password1'] == request.POST['password2'] :
            if (request.POST['role'] == 'user'):
                try:
                    Member.objects.get(username = request.POST['username'])
                    return render (request,'main:settings', {'error':'Username is already taken!'})
                except Member.DoesNotExist:
                    role=request.POST['role']
                    email=request.POST['email']
                    user = Member.objects.create_user(request.POST['username'],password=request.POST['password1'],email=email,is_active=True,is_staff=True,phone=request.POST['contactnumber'])
                    login(request,user)
                    return redirect('main:settings')
            else:
                try:
                    Member.objects.get(username = request.POST['username'])
                    return render (request,'main:settings', {'error':'Username is already taken!'})
                except Member.DoesNotExist:
                    role=request.POST['role']
                    email=request.POST['email']
                    user = Member.objects.create_user(request.POST['username'],password=request.POST['password1'],email=email,is_active=True,is_superuser=True,phone=request.POST['contactnumber'])
                    login(request,user)
                    return redirect('main:settings')
        else:
            return render (request,'main:settings', {'error':'Password does not match!'})
    else:
        return redirect('main:settings')


def changepass(request):
     if request.method == "POST":
        context_username = request.user 
        ex_password = request.POST.get('exisitngpass',None)
        new_password = request.POST.get('password1',None)
        new_confirm_password = request.POST.get('password2',None)
        print(new_confirm_password,new_password,ex_password)
        if context_username.check_password(ex_password)==True: 
            if new_password==new_confirm_password:
                context_username.set_password(new_confirm_password)
                context_username.save()
            return redirect('main:userlogin')
        else:
            return redirect('main:settings')
     else:
        return redirect('main:settings')


def usersettings(request):
    if request.method == "GET":
        context_user = request.user
        context_department = DepartmentUserMapping.objects.filter(user=context_user)
        context = {
            "loged_user": context_user,
            "departments": context_department,
        }
        return render(request,'usersettings.html',context)

def userProfileUpdate(request):
     if request.method == "POST":
        context_user  = request.user
        context_phone = request.POST.get('contactnumber')
        context_user.phone = context_phone
        context_user.save(update_fields=['phone'])
        print(context_user.phone)
     return redirect('main:userlogin')

def deleteuser(request):
    if request.method == "POST":
        context_user = request.user
        context_userselected = request.POST.get('userselected')
        context_user_for_inactive = Member.objects.get(id=context_userselected)
        context_user_for_inactive.is_active = False
        context_user_for_inactive.save()
        return redirect('main:dashboard')