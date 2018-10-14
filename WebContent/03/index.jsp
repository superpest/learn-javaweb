<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
	<p>使用的jsp:include</p>
    <jsp:include page="header.html"></jsp:include>
    
    <jsp:include page="footer.jsp">
    	<jsp:param value="lyj" name="name"/>
    </jsp:include>
    
    
</body>
</html>