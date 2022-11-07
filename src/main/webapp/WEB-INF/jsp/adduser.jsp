
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <title>login</title>
</head>
<link href="${pageContext.request.contextPath}/static/bootstrap3.3.7/css/bootstrap.css" rel="stylesheet">
<style>
    body{
        background-image: url("${pageContext.request.contextPath}/static/image/background.jpg");
        background-size: cover;

    }

    #a{
        width: 420px;
        height: 270px;
        border-radius: 10px;
        background-color: rgba(255, 255, 255, 0.4);
        position: absolute;
        /* 水平居中 */
        left: 50%;
        margin-left: -210px;
        /* 垂直居中 */
        top: 50%;
        margin-top: -115px;

    }
    #result_name{
        width: 400px;
        height: 20px;
        padding-left: 73px;
    }
    .button {
        background-color: rgba(124, 175, 76, 0.68);
        border: none;
        color: rgba(255, 255, 255, 0.85);
        border-radius: 15px;
        border: 2px solid #ffffff;
        padding: 8px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-top: 20px;
        margin-left: 170px;
    }
    .button:hover {
        background-color: #4CAF50;
        color: white;
    }
</style>
<body>
<%--    <form action="${pageContext.request.contextPath}/user/loginCheck" method="post">--%>
<%--        用户名：<input name="username">--%>
<%--        密码：<input name="password">--%>
<%--        <input type="submit" value="登录">--%>
<%--    </form>--%>


<%--    <form action="${pageContext.request.contextPath}/user/loginCheck" method="post">--%>
<%--        <div class="form-group">--%>
<%--            <label for="exampleInputText">用户名</label>--%>
<%--            <input type="text" class="form-control" id="exampleInputText" placeholder="用户名" name="username">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="exampleInputPassword1">密码</label>--%>
<%--            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <input type="submit" id="exampleInputFile" value="登录">--%>
<%--        </div>--%>
<%--    </form>--%>



<div id="a">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/user/loginCheck" method="post" style="width: 400px;height: 200px;padding-top: 20px;">
        <div class="form-group">
            <%--@declare id="exampleinputtext"--%><label for="username" class="col-sm-2 control-label">用户</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="username" placeholder="用户名" name="username" onblur="blur_username()" onfocus="focus_username()" style="width: 300px;height: 40px;border-radius: 10px">
            </div>
        </div>

        <div id="result_name"></div><br>

        <div class="form-group">
            <label for="userpwd" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="userpwd" placeholder="密码" name="password" onblur="blur_userpwd()" onfocus="focus_userpwd()" style="width: 300px;height: 40px;border-radius: 10px">
            </div>
        </div>
        <div class="form-group">
                <input class="button" type="submit" value="确认注册">
            </div>
    </form>
</div>




</body>

<script>

    function check_other_char(str) {
        var arr = ["&", "\\", "/", "*", ">", "<", "@", "!"];
        for (var i = 0; i < arr.length; i++) {
            for (var j = 0; j < str.length; j++) {
                if (arr[i] == str.charAt(j)) {
                    return true;
                }
            }
        }
        return false;
    }

    function focus_username() {
        // 找到后面的div, id = result_name
        var nameObj = document.getElementById("result_name");
        nameObj.innerHTML = "用户名不能包含特殊字符且为2~8位";
        nameObj.style.color = "#ffffff";
    }
    // 当鼠标不聚焦于用户名input
    function blur_username() {
        // 找到id=result_name的div
        var nameObj = document.getElementById("result_name");
        // 判断用户名是否合法
        var x = document.getElementById("username").value;
        var str2 = check_user_name(x);
        nameObj.style.color = "red";
        if ("该用户名合法" == str2) {
            flag = true;
            nameObj.innerHTML = str2;
        }
        else {
            nameObj.innerHTML = str2;
        }

    }
    // 检查用户名是否合法        合法就返回"该用户名合法"
    function check_user_name(str) {
        let str2 = "该用户名合法";
        if ("" == str) {
            str2 = "用户名为空";
            return str2;
        }
        else if ((str.length < 2) || (str.length > 6)) {
            str2 = "用户名必须为2 ~ 6位";
            return str2;
        }
        else if (check_other_char(str)) {
            str2 = "不能含有特殊字符";
            return str2;
        }
        return str2;
    }


    function focus_userpwd() {
        // 找到后面的div, id = result_name
        let nameObj = document.getElementById("result_name");
        nameObj.innerHTML = "密码不能包含特殊字符且为6~16位";
        nameObj.style.color = "#ffffff";
    }
    // 当鼠标不聚焦于密码input
    function blur_userpwd() {
        // 找到id=result_name的div
        let nameObj = document.getElementById("result_name");
        // 判断密码是否合法
        let x = document.getElementById("userpwd").value;
        let str2 = check_user_pwd(x);
        nameObj.style.color = "red";
        if ("该密码名合法" == str2) {
            flag = true;
            nameObj.innerHTML = str2;
        }
        else {
            nameObj.innerHTML = str2;
        }

    }
    // 检查密码是否合法        合法就返回"该密码合法"
    function check_user_pwd(str) {
        let str2 = "该密码合法";
        if ("" == str) {
            str2 = "密码为空";
            return str2;
        }
        else if ((str.length < 6) || (str.length > 16)) {
            str2 = "密码必须为6 ~ 16位";
            return str2;
        }
        else if (check_other_char(str)) {
            str2 = "不能含有特殊字符";
            return str2;
        }
        return str2;
    }

</script>
</html>
