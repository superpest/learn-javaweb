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
	<p>下面使用out.print输出的</p>
    <%
    
	    out.println("11111");
	    out.print("222222");
	    out.newLine();
	    out.println("<br />");
	   
	    
    %>
    <%= out.getBufferSize() %>
    <%=  out.getRemaining() %>
</body>
</html>