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
		hello, 你输入的名字是 <%= session.getAttribute("username") %>
		
		<br />
		<%if(session.isNew()){%>
			welcome new user(登陆后只显示一次，刷新就没有了) <br>
		<%}else{%>
			<br>点击链接，删掉sesion
			 <br> <a href="logout.jsp">logout</a>
		<%}%>
		
	<%}else{%>
		please login first <a href="login.jsp">login</a>
	<%}%>


	
</html>