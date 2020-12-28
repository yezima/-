<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>在线考试系统后台登录</title>
    <link rel="stylesheet" href="htstyle/css/login.css"/>
    <script src="htstyle/js/jquery-1.11.0.min.js"></script>
</head>

<body>
<img src="htstyle/images/loginImg.jpg" class="bgImg"/>
<form id="loginForm" name="loginForm" action="login?ac=adminlogin<%--&a=a--%>" method="post" onsubmit="return submitForm()">
    <div class="content">
        <div class="bidTitle">在线考试系统登录</div>
        <div class="logCon">
            <div class="line">
                <span>账号:</span>
                <input class="bt_input" type="text" id="username" name="username"/>
            </div>
            <div class="line">
                <span>密码:</span>
                <input class="bt_input" type="password" name="pwd" id="password"/>
            </div>
           <%-- <div class="line pagerandom">
                <span>验证码:</span>
                <input class="bt_input" type="text" id="pagerandom" name="pagerandom"/>
                <img src="image.jsp" style="width: 60px;height: 30px;min-width: 60px;min-width: 30px;"
                     onClick="this.src='image.jsp?time='+new Date().getTime();">
            </div>--%>
            <div class="line">
                <span>权限:</span>
                <select class="bt_input" name="cx">
                    <option value="管理员">管理员</option>
                    <option value="学生">学生</option>
                    <option value="教师">教师</option>
                </select>
            </div>
            <button type="submit" class="logingBut" style="font-size: 20px">登录</button>
            <br>
            <br>
            <style>div a {
                text-decoration: none
            }</style>
            <div class="line" style="font-size: 20px">
                <a href="xuesheng_add.jsp" class="logingBut" style="padding: 10px 124px">学生注册</a>
            </div>
        </div>
    </div>
</form>

<script>
    function submitForm() {
        var frm = $('#loginForm');
        var form = $(frm);
        var input;
        input = form.find('#username');
        if (input.val() == '') {
            alert('请填写账号');
            return false;
        }
        input = form.find('#password');
        if (input.val() == '') {
            alert('请填写密码');
            return false;
        }
        input = form.find('#pagerandom');
        if (input.val() == '') {
            alert('请填写验证码');
            return false;
        }
        return true;
    }
</script>

</body>

</html>
