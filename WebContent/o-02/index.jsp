<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="site.bean.*" %>
    
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>login</title>
    <link rel="stylesheet" href="<%= path%>/lib/bootstrap.css">
</head>
<body>
	<%
		Signin users = new Signin();
		users.setUserName("admin");
		users.setPassword("welcome");
		
		
	%>
	<div class="container">
		<p><%= users.getUserName() %></p>
		<p><%= users.getPassword() %></p>
		
		<br />
		
		<form name="loginForm" action="<%= path%>/o-02/dologin.jsp" method="post">
		    <div class="form-group">
		        <label>用户名：</label>
		        <input type="text" name="userName" class="form-control" >
		    </div>
		    <div class="form-group">
		        <label>密码：</label>
		        <input type="text" name="password" class="form-control">
		    </div>
		    <div class="form-group">
		        <input type="submit" class="btn btn-primary" value="登录"/>
		    </div>
		</form>
	</div>
	
	
	
	

   	
</body>
</html>