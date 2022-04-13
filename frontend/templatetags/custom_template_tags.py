from django import template

register = template.Library()


@register.simple_tag(name='stringToArray')
def stringToArray(value):
    return value.split(',')
register.filter('stringToArray', stringToArray)


@register.simple_tag(name='makeName')
def makeName(value):
    return value.replace(' ', '_').lower()
register.filter('makeName', makeName)
