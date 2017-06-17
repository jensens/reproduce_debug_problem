from pyramid.view import view_config


@view_config(route_name='home', renderer='templates/mytemplate.jinja2')
def my_view(request):
    raise ValueError
    return {'project': 'Reproduce Debug Problem'}
