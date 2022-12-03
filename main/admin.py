from django.contrib import admin
from import_export.admin import ImportExportModelAdmin
from django.contrib.auth.models import Group
from .models import Department, DepartmentUserMapping, UploadedFile,Member
# Register your models here.
admin.site.unregister(Group)
class DepartmentAdmin(admin.ModelAdmin):
    list_display = ["name", "logo"]
    class Meta:
        model = Department

class UploadFileAdmin(admin.ModelAdmin):
    list_display = ["title","file", "department", "uploaded_by", "timestamp"]
    search_fields = ["title","file", "uploaded_by"]
    class Meta:
        model = UploadedFile


class DepartmentUserMappingAdmin(admin.ModelAdmin):
    list_display = ["user", "department", "is_approved", "is_reviewed"]
    search_fields = ["user", "department"]
    class Meta:
        model = DepartmentUserMapping


admin.site.register(Department, DepartmentAdmin)
admin.site.register(DepartmentUserMapping, DepartmentUserMappingAdmin)
admin.site.register(UploadedFile, UploadFileAdmin)
admin.site.register(Member)

admin.site.site_title = "Vishal FMS"
admin.site.site_header = "Vishal FMS"