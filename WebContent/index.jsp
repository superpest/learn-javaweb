<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="<%= path%>/lib/bootstrap.css">
</head>
<body>
    <%
    	String str = "hello world!";
    %>
    <div class="container">
	   	<h1><%= str %></h1>
	   	<dl>
			<dt>jsp</dt>
	   		<dd><a href="01/index.jsp">include</a></dd>
	   		<dd><a href="01/iserror.jsp">error</a></dd>
	   		<dd><a href="02/index.jsp">forward</a></dd>
	   		<dd><a href="03/index.jsp">jsp:include</a></dd>
	   		<dd><a href="04/index.jsp">javaBean</a></dd>
	   		<dd><a href="05/index.jsp">out</a></dd>
	   		<dd><a href="05/request.jsp">requrest</a></dd>
	   		<dd><a href="05/checkbox.jsp">checkbox</a></dd>
	   		<dd><a href="06/index.jsp">cookie</a></dd>
	   		<dd><a href="07/login.jsp">session</a></dd>
	   		<dd><a href="08/index.jsp">application</a></dd>
	   		<dd><a href="09/index.jsp">page</a></dd>
	   		<dd><a href="09/error.jsp">error</a></dd>
	   	</dl>
	 	<dl>
			<dt>jstl</dt>
	   		<dd><a href="10/index.jsp">jstl:core</a></dd>
	   	</dl>
	   	<dl>
			<dt>other</dt>
	   		<dd><a href="o-01/index.jsp">cookie-demo</a></dd>
	   		<dd><a href="o-02/index.jsp">javaBean-demo</a></dd>
	   		<dd><a href="o-03/index.jsp">forward-demo</a></dd>
	   		<dd><a href="o-04/index.jsp">dao-demo</a></dd>
	   		<dd><a href="o-05/index.jsp">shop</a></dd>
	   	</dl>
	   	<dl>
			<dt>servelet</dt>
	   		<dd><a href="s-01/index.jsp">hello</a></dd>
	   	</dl>
	   	<div class="text-center">
		    <a href="https://github.com/superpest" target="_blank"> 小楫轻舟 </a> @ 2017 -  <script>document.write(new Date().getFullYear());</script> 
		</div>
	</div>
</body>
</html>
