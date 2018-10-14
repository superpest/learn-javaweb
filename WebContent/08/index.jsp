<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
	<p>！！！往 application里写点东西，所有的人就都能看到了。</p>
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
	<h1>该页面被访问了 共<%= count %>次   我所有的人看到，可以一块把这个数字加到很大</h1>
	
	<h3>appliction 上还有好多的属性</h3>
	<p>服务器信息: <%= application.getServerInfo() %></p>
	<p>应用程序: <%= application.getServletContextName() %></p>
	
	
	<% 
       application.setAttribute("city", "北京");
       application.setAttribute("postcode", "10000");
       
       Enumeration attributes = application.getAttributeNames();
       while(attributes.hasMoreElements()){
          out.println("<p>" + attributes.nextElement() + "</p>");
       }
    %>
	
</body>
</html>