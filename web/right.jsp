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
            /*border: 1px solid black;*/
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
            border: 1px solid indigo;
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
            height: 180px;
            margin-top: 10px;

        }
        img{
            width: 100%;
            height: 100%;
        }

        .col-right-b{
            flex: 0 0 20%;
            height: 200px;
            border: 1px solid #906ecf;
            box-sizing: border-box;

        }
        .col-right-c{
            flex: 0 0 13%;
            height: 200px;
            box-sizing: border-box;


        }
        .col-right-d{
            flex: 0 0 33%;
            box-sizing:border-box;
            height: 50px;
            font-size: 10px;
        }
        .row-1{
            display: flex;
            flex-wrap: wrap;
        }
        .col-right-e{
            border: 1px solid #c67bd3;
            box-sizing: border-box;
            padding-top: 17px;
            height: 67px;
            font-size: 10px;
        }
        .col-a{
            width: 100%;
            height: 40px;
            background-color: blueviolet;
        }
        a{
            color: black;
            font-weight: bold;

        }
    </style>
    <%
        String type = request.getParameter("type");
        GoodsDao goodsDao = DaoFactory.getGoodsDaoInstance();
        int n=0;
        List<HashMap> list=null;
        if (type==null){
            try {
                list = goodsDao.getAllGoods();
                n=goodsDao.countGoods();
            } catch (Exception e) {
                e.printStackTrace();
            }

        }else{
            try {
                list=goodsDao.getAllGoodsByType(type);
                n=goodsDao.countGoodsByType(type);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }


    %>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-right-a">
            <img src="img/right-top.png" alt="图片">
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
                <div class="col-right-e"><a href="goods.jsp?update=<%=list.get(index).get("goodsName")%>"><%=list.get(index).get("goodsName")%></a></div>
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
