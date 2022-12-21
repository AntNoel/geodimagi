from django.contrib.gis.db import models
from django.urls import reverse

# Create your models here.


class Location(models.Model):
    name = models.CharField(max_length=100)
    location = models.PointField()
    address = models.CharField(max_length=100)
    city = models.CharField(max_length=50)
    country = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class Client(models.Model):
    name = models.CharField(max_length=50)
    logo = models.ImageField(upload_to="uploads/images")

    def __str__(self):
        return self.name


class Project(models.Model):
    SAAS = "SaaS"
    SOLUTIONS = "Solutions"
    INDIA = "India"
    USH = "US Health"
    GSO = "GSO"
    DIVISIONS_CHOICES = [
        (SAAS, "SaaS"),
        (SOLUTIONS, "Solutions"),
        (INDIA, "India"),
        (USH, "US Health"),
        (GSO, "GSO"),
    ]
    name = models.CharField(max_length=100)
    team_division = models.CharField(
        choices=DIVISIONS_CHOICES, blank=True, max_length=50
    )
    location = models.ManyToManyField(Location)
    client = models.ManyToManyField(Client, blank=True)

    def get_absolute_url(self):
        return reverse("project_detail", kwargs={"pk": self.pk})

    def __str__(self):
        return f"{self.client.name}:{self.name}"

    def data_filtered_set(self, divisions):
        return Project.objects.filter(team_division__in=divisions)
