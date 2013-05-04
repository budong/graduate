from django.db import models

# Create your models here.
from django.contrib.auth.models import User  
from django.utils.translation import ugettext as _  
from userena.models import UserenaBaseProfile  
  
class MyProfile(UserenaBaseProfile):  
    user = models.OneToOneField(User,unique=True,  
                        verbose_name=_('user'),related_name='my_profile')  
    favourite_snack = models.CharField(_('favourite snack'),max_length=25)
    network = models.IntegerField(max_length=50,default=0)
    system = models.IntegerField(max_length=50,default=0)
    database = models.IntegerField(max_length=50,default=0)
    other = models.IntegerField(max_length=50,default=0)
   

    def __unicode__(self):
        return unicode(self.user)


    def increase_network_num(self):
        self.network = self.network + 1
        self.save()
    def increase_system_num(self):
        self.system = self.system + 1
        self.save()
    def increase_database_num(self):
        self.database = self.database + 1
        self.save()
    def increase_other_num(self):
        self.other = self.other + 1
        self.save()


def create_myprofile(user,favourite_snack='net',network=1,system=1,database=1,other=1):
    MyProfile.objects.create(user=user,favourite_snack=favourite_snack,network=network,system=system,database=database,other=other)


