<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.dao.GoodsDao" %>
<%@ page import="com.factory.DaoFactory" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/10/26
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css.css">
    <%
        String name=request.getParameter("update");
        GoodsDao dao = DaoFactory.getGoodsDaoInstance();
        List<HashMap> list= dao.getGoodsByGoodsName(name);
    %>
    <title>Title</title>
    <meta charset="GBK">
    <style>
        body{
            margin: 0;
            padding:0;
        }
        .container{
            text-align: center;
            text-align: justify;
            margin-top: 0px;
            background:#8c76d1;
        }
        .header{
            width: 100%;
            height: 400px;
        }
        .left{
            width: 400px;
            margin-top: -70px;
            margin-left: 10px;
        }
        .right{
              float: right;
              margin-top: -1100px;
              width: 1100px;
            height: 1000px;
          }
        img{
            width:100%;
            height: 100%;
            float: left;
        }
    </style>
</head>
<body>
<div class="header">
    <jsp:include page="top.jsp"></jsp:include>
</div>

<div class="container">
    <div class="left">
        <jsp:include page="left.jsp"></jsp:include>
    </div>
    <div class="right">
        <%if (name==null){%>
        <jsp:include page="right.jsp"></jsp:include>
        <%}else {%>
        <jsp:include page="right.jsp"></jsp:include>
        <%}%>



    </div>

</div>

<div class="footer">

</div>

</div>
</body>
</html>
