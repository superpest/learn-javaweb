<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

    <p><%= request.getMethod() %></p>
	<p><%= request.getMethod() %></p>
	<p><%= request.getRequestURI() %></p>
	<p><%= request.getProtocol() %></p>
	<p><%= request.getServerName() %></p>
	<p><%= request.getServerPort() %></p>
	<p><%= request.getRemoteAddr() %></p>
	<p><%= request.getRemoteHost() %></p>
		   
</html>