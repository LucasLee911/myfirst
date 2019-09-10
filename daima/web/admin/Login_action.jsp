<%@ page import="cn.zky.biz.UserBiz" %>
<%@ page import="cn.zky.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: ligua
  Date: 2019/9/10
  Time: 21:33
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
    User user=null;
    String username= request.getParameter("username");
    String password= request.getParameter("password");
    UserBiz userBiz=new UserBiz();
    user= userBiz.Login(username,password);
    if (user.getId()>0){
        out.print("登陆成功");
        session.setAttribute("user",user);
        request.getRequestDispatcher("homepage.jsp").forward(request,response);
    }else{
        out.print("登陆失败");
    }
%>
<a href="Login.jsp">返回</a>
</body>
</html>
