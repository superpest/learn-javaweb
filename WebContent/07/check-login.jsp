<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	System.out.println(username);
	if(username!=null && password != null ){
	    session.setAttribute("username",username);
	    response.setHeader("refresh","2;URL=welcome.jsp");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
	<h1>登陆中。。。</h1>
</body>
</html>