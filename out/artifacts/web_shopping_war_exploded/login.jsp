<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/11/4
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xml:base="login.jsp">
<head>
    <title>Title</title>
    <script>
        function change() {
            var src = document.getElementById("verify");
            var i = Math.random();
            src.src = "verifyCode.jsp?id="+i;
        }
    </script>
</head>
<body>
<center>
    <form action="UserServlet?flag=login" method="post">
        <table width="400" border="1" bordercolor="98fb98" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
            <tr>
                <td height="40" colspan="2" align="center"><font color="red">网上电影商城――用户登录</font></td>
            </tr>
            <tr>
                <td height="40" align="right">账号：&nbsp;</td>
                <td width="200" align="left" valign="middle">&nbsp;<input type="text" name="name" size="20" /></td>
            </tr>
            <tr>
                <td height="40" align="right">密码：&nbsp;</td>
                <td height="40" align="left" valign="middle">&nbsp;<input type="password" name="password" size="21" /></td>
            </tr>
            <tr>
                <td height="40" align="right">系统验证码：&nbsp;</td>
                <%int i=1;%>
                <td>&nbsp;<img border=0 id="verify" src="verifyCode.jsp" onclick="change()"></td>
            </tr>
            <tr>
                <td height="40" align="right">输入验证码：&nbsp;</td>
                <td>&nbsp;<input type=text name=verify maxlength=4 ></td>
            </tr>
            <tr>
                <td height="40" colspan="2" align="center"><input type="submit" value=" 确定 " />
                    &nbsp;<input type="reset" value=" 重置 " /></td>
            </tr>
        </table>
    </form>
    <a href=register.html>还没注册？请点击注册！</a>
</center>
</body>
</html>
