from django.forms import ModelForm
from .models import Client, Location
from django.contrib.gis import forms
from django.forms import MultiWidget, TextInput


class ClientForm(ModelForm):
    class Meta:
        model = Client
        fields = "__all__"


class LocationForm(ModelForm):
    class Meta:
        model = Location
        fields = "__all__"
