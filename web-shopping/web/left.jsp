<%@ page import="com.entity.Goods" %>
<%@ page import="java.util.List" %>
<%@ page import="com.factory.DaoFactory" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/10/26
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css.css">
    <style>
        body{
            margin: 0;
            padding: 0;
        }
        [class*='left-']{
            border: 1px solid black;
            width: 100%;
            text-align: center;
            font-size: 20px;
        }
        .left-1{
            width: 100%;
            height: 200px;
        }
        .left-2{
            width: 100%;
            height: 150px;
        }
        .left-3{
            width: 100%;
            height: 100px;
        }
        .left-4{
            width: 100%;

        }
        table{
            width: 100%;
            height: 600px;
            border-collapse: collapse ;
        }
        img{
            width: 100%;
            height: 100%;
        }

    </style>
</head>
<body>
<%
    List<HashMap> goodsList = DaoFactory.getGoodsDaoInstance().getAllGoods();
    HashMap goodsList1=new HashMap();
    int size = goodsList.size();
    int[] a = new int[size];
    out.println(size);
    for (int i=0;i<size;i++){
        String b = String.valueOf(goodsList.get(i).get("click"));
        String value =String.valueOf(goodsList.get(i).get("goodsName"));
        a[i]=Integer.parseInt(b);
        goodsList1.put(a[i],value);
    }
    Arrays.sort(a);

%>
<div class="container">
    <div class="left-1">
        <img src="img/花木兰.jpg" alt="图片">
    </div>
    <div class="left-2">
        <img src="img/战狼2.jpg" alt="图片">
    </div>
    <div class="col-a"></div>
    <div class="left-3">
        <img src="img/复仇.jpg" alt="图片">
    </div>
    <div class="left-4">
        <table border="1px">
            <tr>
                <th>排行榜</th>
                <th>商品名称</th>
                <th>点击次数</th>
            </tr>
            <%if (size<=9){%>
                 <%for (int m=1,n=size;m<=size;m++,n--){%>
                        <tr>
                            <td><%=m%></td>
                            <td><a href="main.jsp?update=<%=goodsList1.get(a[n-1])%>"><%=goodsList1.get(a[n-1])%></a></td>
                            <td><%=a[n-1]%></td>
                        </tr>
            <%session.setAttribute("define","define");%>
                <%}%>
            <%}%>

            <%if (size>9){%>
                <%for (int m=1,n=size;m<=size&&n>=size-9;m++,n--){%>
                        <tr>
                            <td><%=m%></td>
                            <td><a href="main.jsp?update=<%=goodsList1.get(a[n-1])%>"  name="update" value=""><%=goodsList1.get(a[n-1])%></a></td>
                            <td><%=a[n-1]%></td>
                        </tr>
                <%}%>
            <%}%>

        </table>
    </div>
</div>
</body>
</html>
