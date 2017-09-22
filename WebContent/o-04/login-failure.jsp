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
    <title>failure</title>
    <link rel="stylesheet" href="<%= path%>/lib/bootstrap.css">
</head>
<body>

	<div class="container">
		<br />
		<div class="alert alert-danger">
			<p>登录失败！请检查用户或者密码!</p><a href="index.jsp">返回登录</a>
		</div>
	</div>
   	
</body>
</html>