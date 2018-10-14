<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
	<h2>查看request的参数</h2>
    <p>Method ：<%= request.getMethod() %></p>
	<p>RequestURI：<%= request.getRequestURI() %></p>
	<p>Protocol：<%= request.getProtocol() %></p>
	<p>ServerName：<%= request.getServerName() %></p>
	<p>ServerPort：<%= request.getServerPort() %></p>
	<p>RemoteAddr：<%= request.getRemoteAddr() %></p>
	<p>RemoteHost：<%= request.getRemoteHost() %></p>
	
	请求体的MIME类型:<%=request.getContentType() %><br>
	协议类型及版本号:  <%=request.getProtocol() %><br>
	服务器主机名 :<%=request.getServerName() %><br>
	服务器端口号：<%=request.getServerPort() %><BR>
	请求文件的长度 ：<%=request.getContentLength() %><BR>
	请求客户端的IP地址：<%=request.getRemoteAddr() %><BR>
	请求的真实路径：<%=request.getRealPath("request.jsp") %><br>
	请求的上下文路径：<%=request.getContextPath() %><BR>  
		   
</html>