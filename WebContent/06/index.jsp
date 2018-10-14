<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache");
		Cookie cookie = new Cookie("username","12345678");
		cookie.setMaxAge(3600);
		response.addCookie(cookie);
	%>
	<h1>已经写好了cookie，名字是username</h1>
</html>