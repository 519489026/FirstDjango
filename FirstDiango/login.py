from django.http import HttpResponse
from django.shortcuts import render


# 登录界面初始化
def login(request):
    return render(request, "login.html")


# 登录确认
def loginconfirm(request):
    username = request.POST.get("userName")
    password = request.POST.get("password")
    if username == "" or password == "":
        return HttpResponse( {"result":"false", "resultmsg":"用户名与密码必须填写"})
    return HttpResponse({"result": "true", "resultmsg": ""})