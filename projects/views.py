from django.shortcuts import render
from django.views.generic import ListView, CreateView
from django.contrib.gis.db.models.functions import Distance
from django.contrib.gis.geos import Point
from json import dumps

from .models import Project, Location, Client

# Create your views here.
dimagi_cambridge_office_coords = {"lat": 42.363470, "long": -71.100960}


class HomePageView(ListView):
    template_name = "home.html"
    model = Project
    context_object_name = "projects"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["dimagi_cambridge_office_coords"] = dumps(
            dimagi_cambridge_office_coords
        )

        return context


class NewProjectView(CreateView):
    model = Project
    fields = ["name", "team_division", "location", "client"]
    template_name = "newproject.html"


class NewLocationView(CreateView):
    model = Location
    fields = "__all__"
    template_name = "newlocation.html"


class NewClientView(CreateView):
    model = Client
    fields = "__all__"
    template_name = "newclient.html"
