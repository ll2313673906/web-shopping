<%@ page import="java.util.List" %>
<%@ page import="com.entity.Users" %>
<%@ page import="com.factory.DaoFactory" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/11/7
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
    <style>
        .col-1{
            flex: 0 0 20%;
            border: 1px solid black;
            height: 300px;
            box-sizing: border-box;

        }
        .col-2{
            flex: 0 0 59%;
            min-height: 200px;
            border: 1px solid black;
            box-sizing: border-box;
        }

        table{
            width: 100%;
            border-collapse: collapse;
        }
        table tr td:first-child{
            text-align: right;
            font-size: 17px;
            font-weight: bold;
        }
        .table2 tr td:first-child{
            text-align: left;
        }
        .table2 tr td input {
            margin-left: 20%;
        }
    </style>
    <script>
        function change() {
            document.getElementById("hidden").type="text";
            document.getElementById("hidden1").type="hidden";
        }
    </script>
</head>
<body>
<%List<Users> userList = DaoFactory.getUsersDaoInstance().searchUser(String.valueOf(session.getAttribute("name")));%>
<div class="row">
    <div class="col-1"></div>
    <div class="col-2">

        <!--        购买人信息的表单-->
        <form action="" method="post">
            <table border="1">
                <tr>
                    <th colspan="2"><h3>我的账号</h3></th>
                </tr>
                <tr>
                    <td style="width: 40%">用户名：</td>
                    <td>
                        <input id="name_hidden" type="text" value="<%=userList.get(0).getUsername()%>" readonly>
                        <input type="name_hidden1" id="hidden" value="<%=userList.get(0).getUsername()%>">
                    </td>
                </tr>
                <tr>
                    <td>*真实姓名：</td>
                    <td ><%=userList.get(0).getTruename()%></td>
                </tr>
                <tr>
                    <td>*家庭地址：</td>
                    <td ><%=userList.get(0).getAddress()%></td>
                </tr>
                <tr>
                    <td>*联系电话：</td>
                    <td ><%=userList.get(0).getPhone()%></td>
                </tr>
                <tr>
                    <td>*电子邮箱：</td>
                    <td ><%=userList.get(0).getEmail()%></td>
                </tr>
                <tr>
                    <td >*邮编：</td>
                    <td ><%=userList.get(0).getPostcode()%></td>
                </tr>
                <tr>
                    <td>*会员等级：</td>
                    <td ><%=userList.get(0).getGrade()%></td>
                </tr>
                <tr>
                    <td><input type="button" value="修改个人信息" onclick="change()"></td>
                    <td><a href="person_shelf.jsp">查看购物车</a></td>
                </tr>
                <tr>
                    <td><a href="account_infor.jsp">返回我的账号</a></td>
                    <td><a href="main.jsp">返回商场首页</a></td>
                </tr>
            </table>
        </form>

    </div>
    <div class="col-1"></div>
</div>
</body>
</html>
