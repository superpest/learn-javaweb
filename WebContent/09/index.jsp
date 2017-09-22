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
    	out.print(page.toString());
    %>
    <br>
	Application:<%=PageContext.APPLICATION_SCOPE %><br>
    Session:<%=PageContext.SESSION_SCOPE %><br>
    Request:<%=PageContext.REQUEST_SCOPE %><br>
    Page:<%=PageContext.PAGE_SCOPE %><br>
</body>
</html>