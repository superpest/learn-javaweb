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
	   		<dd><a href="01/index.jsp">include的用法</a></dd>
	   		<dd><a href="01/iserror.jsp">error的用法</a></dd>
	   		<dd><a href="02/index.jsp">forward的用法</a></dd>
	   		<dd><a href="03/index.jsp">jsp:include的用法</a></dd>
	   		<dd><a href="04/index.jsp">javaBean的用法</a></dd>
	   		<dd><a href="05/index.jsp">out的用法</a></dd>
	   		<dd><a href="05/request.jsp">requrest上参数的获取</a></dd>
	   		<dd><a href="05/checkbox.jsp">checkbox上的参数如何接收</a></dd>
	   		<dd><a href="06/index.jsp">写一个cookie</a></dd>
	   		<dd><a href="07/login.jsp">session用法</a></dd>
	   		<dd><a href="08/index.jsp">在application上写点数据</a></dd>
	   		<dd><a href="09/index.jsp">page</a></dd>
	   		<dd><a href="09/error.jsp">看下error的详情</a></dd>
	   	</dl>
	 	<dl>
			<dt>jstl</dt>
	   		<dd><a href="10/index.jsp">jstl简单使用</a></dd>
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
