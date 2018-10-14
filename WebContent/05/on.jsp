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
		
		String likes = "";
		String[] likesArr = request.getParameterValues("like");
		if(likesArr!=null){
			for(String like :likesArr){
			    likes = likes + like + " ";
			}
		}
		
	%>
		<p> <%= likes%> </p>
</html>