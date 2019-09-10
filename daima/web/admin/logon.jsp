<%--
  Created by IntelliJ IDEA.
  User: ligua
  Date: 2019/9/10
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<script type="text/javascript" src="/js/jquery-1.8.3.js"></script>
<script>
    function pdnull() {
        var password=$("#password").val();
        var againpassword=$("#againpassword").val();
        var username=$("#username").val();
        if(password==""||againpassword==""||username==""){
            return false;
        }else {
            return true;
        }
    }
</script>
<table>
    <form action="logon_action.jsp" method="post" onsubmit="return pdnull()" >
        <tr>
            <td>用&nbsp&nbsp户&nbsp&nbsp名：</td>
            <td><input type="text" name="username" id="username" placeholder="请输入要注册的用户名"></td>
        </tr>
        <tr>
            <td>密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：</td>
            <td><input type="password" name="password" id="password" placeholder="请输入密码"></td>
        </tr>
        <tr><td>重复密码：</td>
        <td><input type="password" name="password" id="againpassword" placeholder="请输入密码"></td>
        </tr>
        <tr><td></td><td colspan="1"><input type="submit" value="注册">&nbsp<input type="reset" value="重置"></td></tr>
    </form>
</table>


</body>
</html>
