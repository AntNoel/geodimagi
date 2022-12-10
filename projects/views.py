from django.shortcuts import render
from django.views.generic.list import ListView
from django.contrib.gis.db.models.functions import Distance
from django.contrib.gis.geos import Point
from .models import Project

# Create your views here.
dimagi_cambridge_office = {"lat": 42.363470, "long": -71.100960}


user_location = Point(
    dimagi_cambridge_office["long"], dimagi_cambridge_office["lat"], srid=4326
)


class HomePageView(ListView):
    template_name = "home.html"
    model = Project
    context_object_name = "projects"
    # queryset = Project.objects.annotate(
    #     distance=Distance("location", user_location)
    # ).order_by("distance")
