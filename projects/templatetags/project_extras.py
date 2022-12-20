from django import template
from projects.models import Project

register = template.Library()


@register.filter()
def division_filter(model, divisions):

    return Project.objects.filter(team_division__in=divisions)
