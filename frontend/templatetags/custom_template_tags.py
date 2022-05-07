from django import template

register = template.Library()


@register.simple_tag(name='stringToArray')
def stringToArray(value):
    try:
        return value.split(',')
    except:
        return ['No data found']
register.filter('stringToArray', stringToArray)


@register.simple_tag(name='makeName')
def makeName(value):
    return value.replace(' ', '_').lower()
register.filter('makeName', makeName)
