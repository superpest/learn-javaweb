<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="10kb" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <%
    
	    out.println("11111");
	    out.print("222222");
	    out.newLine();
	    out.println("<br />");
	    out.clear();

	    
    %>
    <%= out.getBufferSize() %>
    <%=  out.getRemaining() %>
</body>
</html>