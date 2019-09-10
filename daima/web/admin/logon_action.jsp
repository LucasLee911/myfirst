<%@ page import="cn.zky.biz.UserBiz" %><%--
  Created by IntelliJ IDEA.
  User: ligua
  Date: 2019/9/10
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username= request.getParameter("username");
    String password= request.getParameter("password");
    UserBiz userBiz=new UserBiz();
    boolean flag= userBiz.Logon(username,password);
    if (flag){
        out.print("注册成功");
    }else{
        out.print("注册失败");
    }
%>
  <a href="Login.jsp">返回登陆页面</a>
</body>
</html>
