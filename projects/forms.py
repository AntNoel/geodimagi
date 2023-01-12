from django.forms import ModelForm
from .models import Client, Location, Project
from django.contrib.gis import forms
from django.forms import MultiWidget, TextInput
from django.contrib.gis.db import models


class ClientForm(ModelForm):
    class Meta:
        model = Client
        fields = "__all__"


class LocationForm(ModelForm):
    class Meta:
        model = Location
        fields = ("name", "address", "city", "country", "location")
        widgets = {
            "location": forms.OSMWidget(
                attrs={
                    "map_width": 400,
                    "map_srid": 4326,
                    "map_height": 400,
                    "default_lat": 42.363470,
                    "default_lon": -71.100960,
                    "default_zoom": 5,
                }
            ),
        }


class ProjectForm(ModelForm):
    class Meta:
        model = Project
        fields = "__all__"
