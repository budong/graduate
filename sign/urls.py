from django.conf.urls import patterns, include, url
from sign.views import sign_everyday
from sign.views import sign_list
from sign.views import sign_detail

urlpatterns = patterns('',
    url(r'^$',sign_everyday,name='sign'),
    url(r'^list/$',sign_list,name='sign_list'),
    url(r'^list/(\d+)/$',sign_detail,name='sign_detail'),
    
)
