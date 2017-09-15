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
    	String str = "hello world!";
    %>
   	<h1><%= str %></h1>
   	<p><%= new java.util.Date().toLocaleString() %></p>
   	<dl>
		<dt>jsp</dt>
   		<dd><a href="01/index.jsp">include</a></dd>
   		<dd><a href="01/iserror.jsp">error</a></dd>
   		<dd><a href="02/index.jsp">forward</a></dd>
   		<dd><a href="03/index.jsp">jsp:include</a></dd>
   		<dd><a href="04/index.jsp">javaBean</a></dd>
   		<dd><a href="05/index.jsp">out</a></dd>
   		<dd><a href="05/request.jsp">requrest</a></dd>
   		<dd><a href="05/checkbox.jsp">checkbox</a></dd>
   		<dd><a href="06/index.jsp">cookie</a></dd>
   		<dd><a href="07/login.jsp">session</a></dd>
   		<dd><a href="08/index.jsp">appddcation</a></dd>
   		<dd><a href="09/index.jsp">page</a></dd>
   		<dd><a href="09/error.jsp">error</a></dd>
   	</dl>
</body>
</html>