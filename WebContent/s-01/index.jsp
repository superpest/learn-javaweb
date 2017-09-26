<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="<%= path%>/lib/bootstrap.css">
</head>
<body>

    <div class="container">
	<a href="HelloServlet">Get方式请求HelloServlet</a><br>
	<form action="HelloServlet" method="post">
		<input type="submit" value="Post方式请求HelloServlet"/> 
	</form>  
	</div>
</body>
</html>