from django.http import HttpResponse
from django.shortcuts import render


# 登录界面初始化
def login(request):
    return render(request, "login.html")


# 登录确认
def confirm(request):
    username = request.POST.get("userName")
    password = request.POST.get("password")
    if username == "" or password == "":
        return HttpResponse({"result": "false", "msg": "用户名与密码必须填写"})
    return HttpResponse({"result": "true", "msg": ""})