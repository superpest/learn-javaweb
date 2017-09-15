<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
  
	<p>
	    异常描述信息:<%out.println(exception.getMessage()); %>
	</p>
	<p>
	    exception对象的字符串描述:<%out.println( exception.toString()); %>
	</p>
	<p>
	    <% exception.printStackTrace();%>
	</p>
		
</body>
</html>