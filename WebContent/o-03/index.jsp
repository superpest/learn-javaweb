<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="site.bean.*" %>
    
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

	<div class="container">
	
		<form name="loginForm" action="<%= path%>/o-03/dologin.jsp" method="post">
		    <div class="form-group">
		        <label>用户名：</label>
		        <input type="text" name="username" class="form-control" >
		    </div>
		    <div class="form-group">
		        <label>密码：</label>
		        <input type="text" name="password" class="form-control">
		    </div>
		    <div class="form-group">
		        <input type="submit" class="btn btn-primary" value="登录"/>
		    </div>
		</form>

		<jsp:plugin code="Clock.class" codebase="images" type="applet" width="170" height="150"/>
		
	</div>
	
   	
</body>
</html>