from django import template
from projects.models import Project

register = template.Library()


@register.filter()
def division_filter(things, divisions):
    print("We're running through the filter")
    return Project.objects.all()
    return Project.objects.filter(team_division__in=divisions)


@register.filter
def in_category(things, category):
    print("Going through the filter")
    # return things.filter(category=category)
    return Project.objects.all()
