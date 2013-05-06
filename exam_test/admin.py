from django.contrib import admin
from exam_test.models import QuestionAnswer,UserExam

class QuestionAnswerAdmin(admin.ModelAdmin):
    list_display = ('title','slug','is_right','A','B','C','D')
admin.site.register(QuestionAnswer, QuestionAnswerAdmin)


class UserExamAdmin(admin.ModelAdmin):
    list_display = ('user','pub_date','rate')
admin.site.register(UserExam,UserExamAdmin)
