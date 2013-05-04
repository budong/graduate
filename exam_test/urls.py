from django.conf.urls import patterns, include, url
from django.views.generic.list_detail import object_list,object_detail
from exam_test.views import exam_detail,user_rate_list,user_rate_detail,checkout
from exam_test.models import QuestionAnswer,UserExam

urlpatterns = patterns('',
    url(r'^all_question_list$',object_list,{'queryset': QuestionAnswer.objects.all() },name='exam_list'),
    url(r'^checkout/$',checkout,name='checkout'),
    url(r'^all_question_list/(?P<slug>[-\w]+)/$',exam_detail,name='exam_detail'),
    url(r'^user_rate_list/$',user_rate_list,name='user_rate_list'),
    url(r'^user_rate_list/(\d+)/$',user_rate_detail,name='user_rate_detail'),
)
