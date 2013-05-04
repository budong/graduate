import datetime
from django.db import models
from django.contrib.auth.models import User


def get_time():
    time = datetime.datetime.now().strftime("%Y-%m-%d")
    return time

class SignEveryDay(models.Model):
    user = models.ForeignKey(User)
    #pub_date = models.CharField(max_length=250,default=datetime.datetime.now().strftime("%Y-%m-%d"))
    #pub_date = models.CharField(max_length=250,default=get_time())
    pub_date = models.DateField(default=datetime.date.today)
    mood = models.TextField(max_length=250)

    def __unicode__(self):
        return unicode(self.user)

    @models.permalink
    def get_absolute_url(self):
        return ('sign_detail',[str(self.id)])
        
   

def create_mood(username,mood):
    try:
        SignEveryDay.objects.create(user=username,mood=mood)
    except:
        return False

def check_sign(username):
    try:
        result = SignEveryDay.objects.get(user=username,pub_date=datetime.date.today())
        return True
    except SignEveryDay.DoesNotExist:
        return False
