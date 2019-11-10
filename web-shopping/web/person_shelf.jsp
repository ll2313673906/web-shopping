<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.factory.DaoFactory" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/11/7
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%String account = (String) session.getAttribute("name");
    List<HashMap> shelfList = DaoFactory.getUsersDaoInstance().searchShelf(account);
%>
    <title>个人购物车</title>
    <style>
        .col-2{
            flex: 0 0 59%;
            min-height: 200px;
            border: 1px solid black;
            box-sizing: border-box;
        }
        .col-3{
            flex: 0 0 20%;
            height: 250px;
            box-sizing: border-box;
            border: 1px solid black;
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
            margin-left: 40%;
        }
    </style>
</head>
<body>
<div class="row">
    <div class="col-3"></div>
    <div class="col-2">
        <form action="" method="post">
            <table border="1" class="table2" >
                <tr>
                    <th colspan="7"><h4>我的购物车情况</h4></th>
                </tr>
                <tr>
                    <td>商品编号</td>
                    <td>商品名称</td>
                    <td>单价</td>
                    <td>数量</td>
                    <td>总价格</td>
                    <td colspan="2">操作选项</td>
                </tr>
              <%for (int i=0;i<shelfList.size();i++){%>

                <tr>
                    <%String number = String.valueOf(shelfList.get(i).get("number"));
                      String price = String.valueOf(shelfList.get(i).get("goodsPrice"));
                      int total = Integer.parseInt(number)*Integer.parseInt(price);
                    %>
                    <td><%=shelfList.get(i).get("goodsId")%></td>
                    <td><%=shelfList.get(i).get("goodsName")%></td>
                    <td><%=price%></td>
                    <td><%=number%></td>
                    <td><%=total%></td>
                    <td class="td4"><input type="submit" value="确定购买"></td>
                    <td class="td4"><input type="submit" value="移除此物"></td>
                </tr>
              <%}%>
            </table>
        </form>
    </div>
    <div class="col-3"></div>
</div>
</body>
</html>
