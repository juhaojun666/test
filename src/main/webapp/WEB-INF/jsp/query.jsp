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
    tr:hover {background-color: rgba(255, 255, 255, 0.53);}
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
        <p>team-15 "????????????,????????????"</p>
            <a href="${pageContext.request.contextPath}/user/logout"><button class="button" style="vertical-align:middle" ><span>??????</span></button></a>
    </div>
    <%--????????????--%>
    <form action="selectPlaceByName?page=1&size=6" method="post" class="form-horizontal">
        ??????:<input name="changdi">
        <input type="submit" value="??????">
    </form>
    <%--???????????????  ????????????--%>
    <div id="a">
        <table class="table">
            <tr id="headLine">
                <td>??????</td>
                <td>??????</td>
                <td>??????</td>
                <td>??????/h</td>
                <td>????????????</td>
                <td>????????????</td>
                <td>??????</td>
            </tr>
            <%--var????????????????????????  items??????????????? varstatus?????????????????????--%>
            <c:forEach var="b" items="${pi.list}" varStatus="vs">
                <tr>
                    <td>${vs.count}</td>
                    <td>${b.changdi}</td>
                    <td>${b.shangjia}</td>
                    <td>${b.price}</td>
                    <td>${b.free}</td>
                    <td><fmt:formatDate value="${b.settime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td>
                        <a id="reset" href="${pageContext.request.contextPath}/place/showPlace?id=${b.id}">??????</a>
                        <a id="del" href="${pageContext.request.contextPath}/place/deletePlace?id=${b.id}">??????</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <%--?????????--%>
<%--        ?????????--%>
        <div id="fenye">
            <c:if test="${!pi.isFirstPage}">
                <a id="next" href="${pageContext.request.contextPath}/place/placeList">???  ???</a>
                ${pi.pageNum}/${pi.pages}
                <a id="next" href="${pageContext.request.contextPath}/place/placeList?pageNum=${pi.prePage}">?????????</a>
            </c:if>

            <c:if test="${!pi.isLastPage}">
                <a id="next" href="${pageContext.request.contextPath}/place/placeList?pageNum=${pi.nextPage}">?????????</a>
                ${pi.pageNum}/${pi.pages}
                <a id="next" href="${pageContext.request.contextPath}/place/placeList?pageNum=${pi.lastPage}">???  ???</a>
            </c:if>
        </div>
    </div>


    <div id="b">
        <table class="table table-striped table-bordered table-hover table-condensed">
            <tr>
                <a id="bar" href="${pageContext.request.contextPath}/place/addplace">????????????</a>
                <a id="bar" href="${pageContext.request.contextPath}/user/mohu">????????????</a>
            </tr>

    </div>
</body>
</html>