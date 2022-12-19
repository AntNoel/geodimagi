from django import template

register = template.Library()


@register.filter()
def division_filter(model, divisions):
    return model.all.filter(team_division__in=divisions)
