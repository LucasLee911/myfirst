<%@ page import="cn.zky.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: ligua
  Date: 2019/9/10
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>

<style>
    table {
        border: 1px solid black;
    }
</style>
<body>
<table width="170" height="135" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="170" align="center">
            <table width="100%" height="50" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2" style="text-align: center"><span>
                <%
                    User user = (User) session.getAttribute("user");
                    if (user != null) {
                        String username = user.getUsername();
                %>欢迎，<%=username%>
                <tr>
                    <td colspan="2" style="text-align: center"><a href="logout.jsp" target="_parent"><strong>退出系统</strong></a></td>
                </tr><%
                    } else {
                    %>
                    <a href="Login.jsp">登陆</a>
                    <%
                        }
                    %>
                </span></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center"><a href="#">个人中心</a></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table width="170" align="center" height="25" cellpadding="0" cellspacing="0">
    <tr align="center">
        <td background="pic/bar.gif" valign="middle"><a href="manageboard.jsp" target="main"><strong>随便看看</strong></a>
        </td>
    </tr>
</table>
<table width="170" align="center" height="25" cellpadding="0" cellspacing="0">
    <tr align="center">
        <td background="pic/bar.gif" valign="middle"><a href="addBoard.html" target="main"><strong>在线订票</strong></a>
        </td>
    </tr>
</table>

</table>
</body>
</html>
