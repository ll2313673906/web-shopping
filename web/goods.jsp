<%@ page import="com.dao.GoodsDao" %>
<%@ page import="com.factory.DaoFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.entity.Goods" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
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
            height: 400px;
            margin-left: 25%;
            border: 1px solid black;

        }
        .col-2{
            flex: 0 0 20%;
            height: 400px;
            line-height: 10px;
            border: 1px solid black;
            font-size: 7px;
        }
        img{
            margin-top: 20px;
            width:87%;
            height: 85%;
            float: left;
        }
        table{
            height: 300px;
        }
    </style>
    <script>
        function infor() {
            var confirm = window.confirm("确认加入购物车吗？");
            if (confirm==true){
                <%
                    String name=request.getParameter("update");
                    GoodsDao dao = DaoFactory.getGoodsDaoInstance();
                    List<HashMap> list= dao.getGoodsByGoodsName(name);
                    String userName=String.valueOf(session.getAttribute("name"));
                    String  goodsId=String.valueOf(list.get(0).get("goodsId"));
                    String number="1";
                    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                    String date = df.format(new Date());
                    try {
                        DaoFactory.getGoodsDaoInstance().insertShelf(userName,goodsId,number,date);
                    } catch (Exception e) {
                            e.printStackTrace();
                    }
                %>
                window.alert("已成功加入购物车，将在2秒后返回主界面");
                <%try {
                    Thread.sleep(2000);
                }catch (InterruptedException e) {
                    e.printStackTrace();
                }%>
                open("main.jsp","主界面");
            } else{

            }
        }
    </script>
</head>
<body>
<%
    String update_name=String.valueOf(list.get(0).get("goodsName"));
    String s_click = String.valueOf(list.get(0).get("click"));
    int click  = Integer.parseInt(s_click)+1;
    Goods good = new Goods();
    good.setGoodsName(update_name);
    good.setClick(String.valueOf(click));
    dao.updateClickByGoodsName(good);

%>
<div class="row">
    <div class="col-1"><img src=<%=list.get(0).get("photo")%> alt="图片"></div>
    <div class="col-2">
        <table cellspacing="0" style="height: 300px">
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
            <tr>
                <td><input type="button" value="加入购物车" onclick="infor()"><hr></td>
                <td><a href="main.jsp">返回主界面</a><hr></td>
            </tr>

        </table>
    </div>
</div>

</body>
</html>
