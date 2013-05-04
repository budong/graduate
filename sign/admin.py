from django.contrib import admin
from sign.models import SignEveryDay

class SignEveryDayAdmin(admin.ModelAdmin):
    pass

admin.site.register(SignEveryDay, SignEveryDayAdmin)
