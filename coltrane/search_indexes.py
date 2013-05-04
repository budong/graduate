import datetime
from haystack.indexes import *
from haystack import site
from coltrane.models import Entry

class EntryIndex(SearchIndex):
    text = CharField(document=True, use_template=True)
    author = CharField(model_attr='author')
    pub_date = DateTimeField(model_attr='pub_date')

    def index_queryset(self):
        """Used when the entire index for model is updated."""
        return Entry.objects.filter(pub_date__lte=datetime.datetime.now())


site.register(Entry, EntryIndex)
