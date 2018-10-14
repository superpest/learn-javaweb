<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
    
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

	<%
	 	// 从cookie上取上次用户登陆保存的信息，
		request.setCharacterEncoding("utf-8");
		String username="";
		String password = "";
		Cookie[] cookies = request.getCookies();
		if(cookies!=null&&cookies.length>0)
		    for(int i=0;i<cookies.length;i++){
		    if(cookies[i].getName().equals("username")){
		        username =  URLDecoder.decode(cookies[i].getValue(),"utf-8");
		    }
		    if(cookies[i].getName().equals("password")){
		        password =  URLDecoder.decode(cookies[i].getValue(),"utf-8");
		    }
		} 
		if( username.equals("admin") && password.equals("welcome") ){
			//跳转不会。。。
			out.println("走吧！");
		}
	%>
	<br />
	<div class="container">
		<form name="loginForm" action="<%= path%>/o-01/dologin.jsp" method="get">
		    <div class="form-group">
		        <label>用户名：</label>
		        <input type="text" name="username" class="form-control" value="<%= username %>">
		    </div>
		    <div class="form-group">
		        <label>密码：</label>
		        <input type="text" name="password" class="form-control" value="<%= password %>">
		    </div>
		    <div class="checkbox">
			    <label>
			      <input type="checkbox" name="isUseCookie" checked="checked"/> 十天内记住我的登录状态
			    </label>
			</div>
		    <div class="form-group">
		        <input type="submit" class="btn btn-primary" value="登录"/>
		        <input type="reset" class="btn btn-primary" value="取消"/>
		    </div>
		</form>
	</div>
   	
</body>
</html>