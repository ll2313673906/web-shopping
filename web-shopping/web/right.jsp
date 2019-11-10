<%@ page import="com.dao.GoodsDao" %>
<%@ page import="com.factory.DaoFactory" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Goods" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/10/26
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>RightHtml</title>
    <style>
        .container{
            text-align: center;
            border: 1px solid black;
        }
        body{
            margin: 0;
            padding: 0;
        }
        .row{
            display: flex;
            flex-wrap: wrap;
            margin: 0;
            padding: 0;
            width: 100%;
        }
        [class*='col-']{
            border: 1px solid black;
            -webkit-box-flex: 1;
            -webkit-flex: 1;
            -ms-flex: 1;
            flex: 1;
            min-height: 10px;
            border: indigo;
            text-align: center;
        }
        .col-right-a{
            width: 100%;
            height: 130px;

        }
        img{
            width: 100%;
            height: 100%;
        }

        .col-right-b{
            flex: 0 0 20%;
            height: 200px;
            border: 1px solid black;
            box-sizing: border-box;

        }
        .col-right-c{
            flex: 0 0 13%;
            height: 200px;
            border: 1px solid black;
            box-sizing: border-box;

        }
        .col-right-d{
            flex: 0 0 33%;
            box-sizing:border-box;
            border: 1px solid black;
            height: 50px;
        }
        .row-1{
            display: flex;
            flex-wrap: wrap;
        }
        .col-right-e{
            border: 1px solid black;
            box-sizing: border-box;
            padding-top: 17px;
            height: 67px;
        }
        .col-a{
            width: 100%;
            height: 40px;
            background-color: blueviolet;
        }
        a{
            color: blue;

        }
    </style>
    <%
        GoodsDao goodsDao = DaoFactory.getGoodsDaoInstance();
        int n=goodsDao.countGoods();
//        if (n%3!=0){
//            n++;
//        }
        List<HashMap> list = goodsDao.getAllGoods();


    %>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-right-a">
            <img src="img/top_right.jpg" alt="图片">
        </div>
    </div>
    <%  int index=-1;
        for(int j=1;j<=n/3;j++){%>
    <div class="row">
        <%for (int i=1;i<=3;i++){index++;%>
        <div class="col-right-b"><img src=<%=list.get(index).get("photo")%> ></div>
        <div class="col-right-c">
            <div class="row-1">
                <div class="col-right-e"></div>
            </div>
            <div class="row-1">
                <div class="col-right-e"><a href=""><%=list.get(index).get("goodsName")%></a></div>
            </div>
            <div class="row-1">
                <div class="col-right-e"><p>价格：<%=list.get(index).get("goodsPrice")%></p></div>
            </div>
        </div>

        <%
        }%>
    </div>
    <div class="row">
        <div class="col-right-d"><p>简单介绍：好片</p></div>
        <div class="col-right-d"><p>简单介绍：好片</p></div>
        <div class="col-right-d"><p>简单介绍：好片</p></div>
    </div>
    <%}%>
    <%for (int k=0;k<n%3;k++){
        int index1=n/3*3-1;
        index1++;
    %>
    <div class="row">

        <div class="row">
            <div class="col-right-b"><img src=<%=list.get(index1).get("photo")%> alt=""></div>
            <div class="col-right-c">
                <div class="row-1">
                    <div class="col-right-e"></div>
                </div>
                <div class="row-1">
                    <div class="col-right-e"><a href=""><%=list.get(index1).get("goodsName")%></a></div>
                </div>
                <div class="row-1">
                    <div class="col-right-e"><p>价格：<%=list.get(index1).get("goodsPrice")%></p></div>
                </div>
            </div>
        </div>
        <div class="col-right-d"><p>简单介绍：好片</p></div>
    </div>
    <%}%>




</div>
</body>
</html>
