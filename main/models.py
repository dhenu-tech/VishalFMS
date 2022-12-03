from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.


class Member(AbstractUser):
    phone = models.CharField(max_length=10, unique=True)

    def __str__(self):
        return str(self.email)
        
class Department(models.Model):
    name = models.CharField(max_length=100)
    logo = models.ImageField(upload_to="dept_logos/")

    def __str__(self):
        return str(self.name)
    
class DepartmentUserMapping(models.Model):
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    user = models.ForeignKey(Member, on_delete=models.CASCADE)
    is_approved = models.BooleanField(default=False)
    is_reviewed = models.BooleanField(default=False)
    class Meta:
        unique_together = ("user", "department")
    def __str__(self):
        return str(self.department) + " 's " + str(self.user)
    
class UploadedFile(models.Model):
    title = models.CharField(max_length=500)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    uploaded_by = models.ForeignKey(Member, on_delete=models.CASCADE)
    comment = models.CharField(max_length=200,null=True,blank=True)
    file = models.FileField(upload_to='uploaded_files')
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.department) + " 's " + str(self.uploaded_by) + " 's upload"

    def save(self, *args, **kwargs):
        if DepartmentUserMapping.objects.filter(user=self.uploaded_by, department=self.department, is_approved=True, is_reviewed=True).exists():

            return super().save(*args, **kwargs)
        else:
            raise Exception("User doesnt have permission to upload")

