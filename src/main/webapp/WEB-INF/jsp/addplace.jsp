<%--
  Created by IntelliJ IDEA.
  User: ouyang
  Date: 2022/9/26
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <title>query</title>
</head>
<link href="${pageContext.request.contextPath}/static/bootstrap3.3.7/css/bootstrap.css" rel="stylesheet">
<style>
    body{
        background-image: url("${pageContext.request.contextPath}/static/image/bg2.JPG");
        background-size: cover;
    }
    .header{
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        z-index: 1000;
        background: #ffffff;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    table{
        border: rgba(255,253,251,0);
    }
    th {
        text-align: center;
    }
    #a{
        width:900px;
        height: 600px;
        border: solid rgba(255, 255, 255, 0.76);
        border-radius: 15px;
        background-color: rgba(255, 255, 255, 0.4);
        position: absolute;
        left:700px;
        top:300px;

    }
    #b{
        width: 100px;
        height: 600px;
        border: solid rgba(255, 255, 255, 0.76);
        border-radius: 15px;
        background-color: rgba(255, 255, 255, 0.4);
        position: absolute;
        left:500px;
        top:300px;

    }
    #fenye{
        position: absolute;
        padding-left: 35%;
    }
    #headLine{
        background-color:white;
        font-size:20px;
        color: #0f0f0f;
    }
    #reset{
        background-color:#a121ff;
        border: none;
        color: rgba(255, 255, 255, 0.85);
        border-radius: 15px;
        border: 2px solid #ffffff;
        padding: 8px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        font-weight: bold;
    }
    #del{
        background-color: #ee12d0;
        border: none;
        color: rgba(255, 255, 255, 0.85);
        border-radius: 15px;
        border: 2px solid #ffffff;
        padding: 8px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        font-weight: bold;
    }
    #next{
        background-color: #4a11a7;
        border: none;
        color: rgba(255, 255, 255, 0.85);
        border-radius: 15px;
        border: 2px solid #ffffff;
        padding: 8px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        font-weight: bold;
        margin-left: 20px;
        margin-right: 20px;
    }
    #bar{
        background-color: #4a11a7;
        border: none;
        color: rgba(255, 255, 255, 0.85);
        border-radius: 15px;
        border: 2px solid #ffffff;
        padding: 8px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        font-weight: bold;
        margin-left: 20px;
        margin-right: 20px;
    }
    .button {
        background-color:#a121ff;
        border: none;
        color: rgba(255, 255, 255, 0.85);
        border-radius: 15px;
        padding: 8px 20px;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        font-weight: bold;
        width: 150px;
        transition: all 0.5s;
        cursor: pointer;
        margin: 5px;
    }

    .button span {
        cursor: pointer;
        display: inline-block;
        position: relative;
        transition: 0.5s;
    }

    .button span:after {
        content: '\00bb';
        position: absolute;
        opacity: 0;
        top: 0;
        right: -20px;
        transition: 0.5s;
    }

    .button:hover span {
        padding-right: 25px;
    }

    .button:hover span:after {
        opacity: 1;
        right: 0;
    }
    a{
        color: white;
        text-decoration: none;
    }
    a:hover{
        color: white;
        text-decoration: none;
    }
    p{
        font-size: 25px;
        position: absolute;
        left: 100px;
        top:30px;
        font-weight: bold;
        color: #4a11a7;
    }
</style>
<body>
<div class="header">
    <img width="5%" id="logo" src="${pageContext.request.contextPath}/static/image/logo.PNG" >
    <p>team-15 "我是菜鸟,想寄就寄"</p>
    <a href="${pageContext.request.contextPath}/user/logout"><button class="button" style="vertical-align:middle" ><span>注销</span></button></a>
</div>

<%--要展示数据  使用表格--%>
<div id="a">
    <table class="table">
        <form class="form-horizontal" action="${pageContext.request.contextPath}/place/addPlace" method="post" style="width: 400px;height: 200px;padding-top: 20px;">
            <div class="form-group">

            </div>

            <div id="result_name"></div><br>

            <div class="form-group">
                <label for="userpwd" class="col-sm-2 control-label">场地</label>
                <div class="col-sm-10" >
                    <input   class="form-control"  id="place" placeholder="场地" name="changdi" onblur="blur_userpwd()" ostyle="width: 300px;height: 40px;border-radius: 10px">
                </div>
                <label for="userpwd" class="col-sm-2 control-label">商家</label>
                <div class="col-sm-10">
                    <input  class="form-control" id="userpwd" placeholder="商家" name="shangjia" onblur="blur_userpwd()" ostyle="width: 300px;height: 40px;border-radius: 10px">
                </div>
                <label for="userpwd" class="col-sm-2 control-label">价格/h</label>
                <div class="col-sm-10">
                    <input  class="form-control" id="userpwd" placeholder="价格/h" name="price" onblur="blur_userpwd()" ostyle="width: 300px;height: 40px;border-radius: 10px">
                </div>
                <label for="userpwd" class="col-sm-2 control-label">是否空闲</label>
                <div class="col-sm-10">
                    <input  class="form-control" id="userpwd" placeholder="是否空闲" name="free" onblur="blur_userpwd()" ostyle="width: 300px;height: 40px;border-radius: 10px">
                </div>
                <label for="userpwd" class="col-sm-2 control-label">开办时间</label>
                <div class="col-sm-10">
<%--                    时间输入可能需要转换--%>
                    <input value='<fmt:formatDate value="${place.settime}" pattern="yyyy-MM-dd HH:mm:ss"/>'class="form-control" id="settime" placeholder="开办时间" name="password" onblur="blur_userpwd()" ostyle="width: 300px;height: 40px;border-radius: 10px">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="button" value="添加">添加</button>

                </div>
            </div>
        </form>

<%--        <form action="addPlace" method="post" class="form-horizontal">--%>
<%--            场地:<input name="changdi">--%>
<%--            商家:<input name="shangjia">--%>
<%--            价格/h:<input name="price">--%>
<%--            是否空闲:<input name="free">--%>
<%--            开办时间:<input name="settime">--%>
<%--            <input type="submit" value="添加">--%>
<%--        </form>--%>
    </table>
</div>

<div id="b">
    <table class="table table-striped table-bordered table-hover table-condensed">
        <tr>
            <a id="bar" href="${pageContext.request.contextPath}/place/addPlace">商家入驻</a>
            <a id="bar" href="${pageContext.request.contextPath}/user/mohu">查询商家</a>
        </tr>
    </table>
</div>
</body>





