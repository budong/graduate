# -*- coding: utf-8 -*-
from django.db import models

import sys
reload( sys )
sys.setdefaultencoding('utf-8')

class Category(models.Model):
    title = models.CharField(max_length=250, help_text='Maximum 250 characters.')
    slug = models.SlugField(unique=True, help_text="Suggested value automatically generated from title. Must be unique.")
    description = models.TextField()
    
    def live_entry_set(self):
        from coltrane.models import Entry
        return self.entry_set.filter(status=Entry.LIVE_STATUS)
        
    class Meta: 
        ordering = ['title']
        verbose_name_plural = "Categories"
    
    def __unicode__(self):
        return unicode(self.title)
    
    @models.permalink
    def get_absolute_url(self):
        return ('coltrane_category_detail', (), { 'slug': self.slug })


class LiveEntryManager(models.Manager):
    def get_query_set(self):
        return super(LiveEntryManager, self).get_query_set().filter(status=self.model.LIVE_STATUS)


class Entry(models.Model):
    LIVE_STATUS = 1
    DRAFT_STATUS = 2
# Create your models here.
from django.contrib.auth.models import User  
from django.utils.translation import ugettext as _  
from userena.models import UserenaBaseProfile  
  
class MyProfile(UserenaBaseProfile):  
    user = models.OneToOneField(User,unique=True,  
                        verbose_name=_('user'),related_name='my_profile')  
    #favourite_snack = models.CharField(_('favourite snack'),max_length=25,verbose_name="爱好")
    favourite_snack = models.CharField(_('favourite snack'),max_length=25)
    network = models.IntegerField(max_length=50,default=0,editable=False)
    system = models.IntegerField(max_length=50,default=0,editable=False)
    database = models.IntegerField(max_length=50,default=0,editable=False)
    other = models.IntegerField(max_length=50,default=0,editable=False)
   

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


