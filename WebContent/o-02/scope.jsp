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
    <title>test</title>
    <link rel="stylesheet" href="<%= path%>/lib/bootstrap.css">
</head>
<body>

	<jsp:useBean id="myUser" class="site.bean.Signin" scope="page" />
	
	<br />
	
	<div class="container">
	
		 <p><jsp:getProperty name="myUser" property="userName" /></p>
		 <p><jsp:getProperty name="myUser" property="password" /></p>
		 
		 <hr />
 	    <%-- <p><%= ((Signin)application.getAttribute("myUser")).getUserName()%></p>
		<p> <%= ((Signin)application.getAttribute("myUser")).getPassword()%> </p>  --%>
		
		<hr />
		<%-- <p><%= ((Signin)session.getAttribute("myUser")).getUserName()%></p>
		<p> <%= ((Signin)session.getAttribute("myUser")).getPassword()%> </p>  --%>
		 
		 <hr />
		<%-- <p><%= ((Signin)request.getAttribute("myUser")).getUserName()%></p>
		<p> <%= ((Signin)request.getAttribute("myUser")).getPassword()%> </p>  --%>
		
		<% 
	       String username = "";
	       String password = "";
	       if(pageContext.getAttribute("myUsers")!=null )
	       {
	          username = ((Signin)pageContext.getAttribute("myUser")).getUserName();
	          password = ((Signin)pageContext.getAttribute("myUser")).getPassword();
	       }
	       
	   %>
		
		<p>用户名：<%= username%></p>
      	<p>密码：<%= password%></p>
	</div>
   	
</body>
</html>