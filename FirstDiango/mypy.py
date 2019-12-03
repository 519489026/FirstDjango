from django.http import HttpResponse


def hello(request):
    result = 0
    i = 0
    while i < 5:
        result = result + i
        i = i + 1
    return HttpResponse(result)