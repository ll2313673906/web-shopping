<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/11/7
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情信息</title>
    <link rel="stylesheet" href="css.css">
    <style>
        .col-1{
            flex: 0 0 20%;
            height: 300px;
            margin-left: 20%;
            border: 1px solid black;

        }
        .col-2{
            flex: 0 0 30%;
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
<div class="row">
    <div class="col-1"><img src="img/right6.jpg" alt="图片"></div>
    <div class="col-2">
        <table>
            <tr>
                <th colspan="2">新红楼梦 <hr></th>

            </tr>

            <tr>
                <td>价格： <hr></td>
                <td>2323 <hr></td>

            </tr>

            <tr>
                <td>类型： <hr></td>
                <td>香港电影 <hr></td>
            </tr>

            <tr>
                <td>出版商： <hr></td>
                <td>香港嘉和 <hr></td>
            </tr>

            <tr>
                <td colspan="2">
                    好片
                </td>

            </tr>

        </table>
    </div>
</div>
</body>
</html>
