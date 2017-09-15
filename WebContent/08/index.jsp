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
		Object obj = application.getAttribute("counter");
		int count = 1;
		if(obj == null){
			application.setAttribute("counter",count);
		}else{
			count = Integer.parseInt(obj.toString());
			count++;
			application.setAttribute("counter",count);
		}
		
	%>
	<h1>该页面被访问了 共<%= count %>次</h1>
		
	<p>服务器信息: <%= application.getServerInfo() %></p>
	<p>应用程序: <%= application.getServletContextName() %></p>


</body>
</html>