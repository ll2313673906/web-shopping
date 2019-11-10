<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/10/26
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%String account = (String) session.getAttribute("name");
      String href="login.jsp";
      String href1="login.jsp";
    if (account==null){
        href="main.jsp";
        href1="main.jsp";
    }else{
        href="account_infor.jsp";
        href1="person_shelf.jsp";
    }

    %>
    <meta charset="UTF-8">
    <title>商城的头</title>
    <script>
    </script>
    <style>
        body{
            margin: 0;
            padding: 0;
        }
        .container{
            text-align: center;
        }
        .row{
            display: flex;
            flex-wrap: wrap;
            margin: 0;
            padding: 0;
            width: 100%;
        }

        /*给所有列设置统一样式*/

        [class*='col-']{
            -webkit-box-flex: 1;
            -webkit-flex: 1;
            -ms-flex: 1;
            flex: 1;
            min-height: 10px;
            border: indigo;
        }
        .col-a{
            width: 100%;
            height: 40px;
            background-color: blueviolet;
        }
        .col-header-1{
            border: 2px solid black;
            height: 200px;
            display: flex;
            flex: 0 0 30%;
        }
        .col-header-2{
            border: 2px solid black;
            height: 200px;
            flex: 0 0 50%;
        }
        .col-header-3{
            border: 2px solid black;
            height: 200px;
            flex: 0 0 18.5%;
        }
        .col-header-b{
            border: 2px solid black;
            flex: 0 0 11.1%;
            height: 45px;
            line-height: 40px;
            float: left;
            box-sizing: border-box;
        }
        img{
            width: 100%;
            height: 100%;
        }
        .img-header-2{
            width: 100%;
            height: 100%;
        }
        a{
            text-decoration: none;
        }
        .col-header-b>a{
            color: black;

        }

    </style>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-a"></div>
    </div>
    <div class="row">
        <div class="col-header-1">
            <div class="img-header-1">
                <img src="img/top_left.jpg" alt="图片">
            </div>
        </div>
        <div class="col-header-2">
            <div class="img-header-2">
                <img src="img/top_right.jpg" alt="图片">
            </div>
        </div>
        <div class="col-header-3">
            <div>
                <h3><a href="<%=href%>" id="account">【我的账号】</a></h3>
                <p><a href="<%=href1%>">【我的购物车】</a></p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-a"></div>
    </div>
    <div class="row">
        <div class="col-header-b"></div>
        <div class="col-header-b"><a href="#">首页</a></div>
        <div class="col-header-b"></div>
        <div class="col-header-b"><a href="#">香港电影</a></div>
        <div class="col-header-b"></div>
        <div class="col-header-b"><a href="#">大陆电影</a></div>
        <div class="col-header-b"></div>
        <div class="col-header-b"><a href="#">关于我们</a></div>
        <div class="col-header-b"></div>


    </div>
</div>
</body>
</html>
