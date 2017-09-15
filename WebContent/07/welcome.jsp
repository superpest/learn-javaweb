<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

	<%if(session.getAttribute("username")!=null){%>
		hello, <%= session.getAttribute("username") %>
		
		<br />
		<%if(session.isNew()){%>
			welcome new user
		<%}else{%>
			welcome old user <a href="logout.jsp">logout</a>
		<%}%>
		
	<%}else{%>
		please login first <a href="login.jsp">login</a>
	<%}%>


	
</html>