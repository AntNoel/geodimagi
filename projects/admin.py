from django.contrib import admin
from django.contrib.gis.admin import OSMGeoAdmin
from .models import Location, Client, Project

# Register your models here.


admin.site.register(Client)
admin.site.register(Project)


@admin.register(Location)
class LocationAdmin(OSMGeoAdmin):
    list_display = ("name", "location")
