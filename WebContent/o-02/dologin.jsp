<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="site.bean.Signin" %>
    
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>login</title>
    <link rel="stylesheet" href="<%= path%>/lib/bootstrap.css">
</head>
<body>

	<jsp:useBean id="myUser" class="site.bean.Signin" scope="page" />
	
	<br />
	
	<div class="container">
	
		<%--  <jsp:setProperty name="myUser" property="*"/>  --%>
		 
		<%--  <jsp:setProperty name="myUser" property="userName"/>  --%> 
		 
		<%--  <jsp:setProperty name="myUser" property="userName" value="lisi"/>
   		 <jsp:setProperty name="myUser" property="password" value="888888"/> --%>
   		 
   		 <jsp:setProperty name="myUser" property="userName"/>
    	 <jsp:setProperty name="myUser" property="password" param="pc" />
		 
		 
		 <p><jsp:getProperty name="myUser" property="userName" /></p>
		 <p><jsp:getProperty name="myUser" property="password" /></p>
		 
		 <br />
		 <p><%= myUser.getUserName() %></p>
		 <p><%= myUser.getPassword() %></p>
		 
		<%-- <% 
		   request.getRequestDispatcher("scope.jsp").forward(request, response);
		%> --%>
		 
		 
	</div>
   	
</body>
</html>