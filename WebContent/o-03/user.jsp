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
		request.setCharacterEncoding("utf-8");
		String username = "";
		String password = "";
		String email = "";
	    
		if(request.getParameter("username")!=null){
		   username = request.getParameter("username");
		}
		if(request.getParameter("password")!=null){
		   password = request.getParameter("password");
		}
		if(request.getParameter("email")!=null){
		   email = request.getParameter("email");
		}
	%>
	<div class="container">
	
		
		用户名：<%=username %><br>
		密码：<%=password %><br>
		电子邮箱：<%=email %><br>
		
	</div>
	
   	
</body>
</html>