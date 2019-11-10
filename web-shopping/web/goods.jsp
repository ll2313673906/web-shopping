<%@ page import="com.dao.GoodsDao" %>
<%@ page import="com.factory.DaoFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.entity.Goods" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/11/9
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xml:base="goods.jsp">
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css.css">
    <style>
        .col-1{
            flex: 0 0 20%;
            height: 300px;
            margin-left: 25%;
            border: 1px solid black;

        }
        .col-2{
            flex: 0 0 20%;
            height: 300px;
            line-height: 20px;
            border: 1px solid black;
        }
        img{
            margin-top: 20px;
            width:87%;
            height: 85%;
            float: left;
        }
    </style>
</head>
<body>
<%
    String name=request.getParameter("update");
    GoodsDao dao = DaoFactory.getGoodsDaoInstance();
    List<HashMap> list= dao.getGoodsByGoodsName(name);
%>
<div class="row">
    <div class="col-1"><img src=<%=list.get(0).get("photo")%> alt="图片"></div>
    <div class="col-2">
        <table>
            <tr>
                <th colspan="2"><%=list.get(0).get("goodsName")%> <hr></th>
            </tr>
            <tr>
                <td>价格： <hr></td>
                <td><%=list.get(0).get("goodsPrice")%><hr></td>
            </tr>
            <tr>
                <td>类型： <hr></td>
                <td><%=list.get(0).get("type")%> <hr></td>
            </tr>
            <tr>
                <td>出版商： <hr></td>
                <td><%=list.get(0).get("publisher")%> <hr></td>
            </tr>
            <tr>
                <td>介绍：<hr></td>
                <td ><%=list.get(0).get("goodsIntro")%><hr></td>
            </tr>
            <tr>
                <td>剩余数量：<hr></td>
                <td ><%=list.get(0).get("goodsNum")%><hr></td>
            </tr>

        </table>
    </div>
</div>

</body>
</html>
