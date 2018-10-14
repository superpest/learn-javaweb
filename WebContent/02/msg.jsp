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
   		String name =request.getParameter("name");
   		String age = request.getParameter("age");
   %>
   <p>我是被forward到的</p>
	<ul>
   		<li>NAME: <%= name%></li>
   		<li>AGE: <%= age%></li>
   	</ul>
</body>
</html>