from django.shortcuts import render
from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView
from django.contrib.gis.db.models.functions import Distance
from django.contrib.gis.geos import Point
from .forms import LocationForm
from json import dumps
from .forms import ProjectForm
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
    fields = ("name", "team_division", "location", "client", "start_date", "end_date")
    template_name = "newproject.html"
    success_url = reverse_lazy("home")


class NewLocationView(CreateView):
    model = Location
    form_class = LocationForm
    template_name = "newlocation.html"
    success_url = reverse_lazy("new_project")


class NewClientView(CreateView):
    model = Client
    fields = "__all__"
    template_name = "newclient.html"
    success_url = reverse_lazy("new_project")
