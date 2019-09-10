<%--
  Created by IntelliJ IDEA.
  User: ligua
  Date: 2019/9/10
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
</head>
<body>
<div>
    <table>
        <form action="Login_action.jsp" method="post">
        <tr><td>用户名：</td><td><input type="text" name="username" id="username" value="gmm"></td></tr>
        <tr><td>密&nbsp码：</td><td><input type="password" name="password" id="password" value="000"></td></tr>
        <tr><td colspan="2"><input type="submit" value="登陆">&nbsp<a href="logon.jsp">注册</a></td></tr></form>
    </table>
</div>
</body>
</html>
