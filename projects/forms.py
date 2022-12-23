from django.forms import ModelForm
from .models import Client, Location


class ClientForm(ModelForm):
    class Meta:
        model = Client
        fields = "__all__"


class LocationForm(ModelForm):
    class meta:
        model = Location
        fields = "__all__"
