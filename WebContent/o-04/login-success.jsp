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
    <title>success</title>
    <link rel="stylesheet" href="<%= path%>/lib/bootstrap.css">
</head>
<body>

	<div class="container">
		<br />
		<div class="alert alert-success">
		<% 
			String loginUser = "";
			if(session.getAttribute("username")!=null){
			   loginUser = session.getAttribute("username").toString();
			}
		%>
		欢迎您<font color="red"><%=loginUser%></font>,登录成功！
		</div>
	</div>
   	
</body>
</html>