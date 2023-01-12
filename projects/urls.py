from django.urls import path
from .views import HomePageView, NewProjectView, NewClientView, NewLocationView


urlpatterns = [
    path("", HomePageView.as_view(), name="home"),
    path("new_project", NewProjectView.as_view(), name="new_project"),
    path("new_location", NewLocationView.as_view(), name="new_location"),
    path("new_client", NewClientView.as_view(), name="new_client"),
]
