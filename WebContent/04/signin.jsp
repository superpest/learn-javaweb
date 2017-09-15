<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <jsp:useBean id="user" class="site.bean.Signin">
	    <jsp:setProperty property="userName" name="user" />
	    <jsp:setProperty property="password" name="user" />
	</jsp:useBean> 
	
	
	<%
		request.setCharacterEncoding("utf8");
	    String userName = request.getParameter("userName");
	    String password = request.getParameter("password");
	%>
	
	<p>usernmae:<%= userName%></p>
	<p>password:<%= password%></p>
	
	<br />
	
	
	<p>	usernmae:
    	<jsp:getProperty property="userName" name="user" />
	</p>
	<p>password:
	    <jsp:getProperty property="password" name="user" />
	</p>
</body>
</html>