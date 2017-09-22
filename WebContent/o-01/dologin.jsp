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
    <title>success</title>
    <link rel="stylesheet" href="<%= path%>/lib/bootstrap.css">
</head>
<body>

	<%
        request.setCharacterEncoding("utf-8");
        String[] isUseCookies = request.getParameterValues("isUseCookie");
        if( isUseCookies != null && isUseCookies.length > 0 ){
            String username = URLEncoder.encode(request.getParameter("username"),"utf-8");
            String password = URLEncoder.encode(request.getParameter("password"),"utf-8");
            Cookie usernameCookie = new Cookie("username",username);
            Cookie passwordCookie = new Cookie("password",password);
            usernameCookie.setMaxAge(864000);
            passwordCookie.setMaxAge(864000);
            response.addCookie(usernameCookie);
            response.addCookie(passwordCookie);
        }else{
        	Cookie[] cookies = request.getCookies();
            if(cookies !=null && cookies.length > 0){
                for(int i=0;i<cookies.length;i++){
                	Cookie cookie = cookies[i];
                    if( cookie.getName().equals("username") || cookie.getName().equals("password") ){
                        cookie.setMaxAge(0); 
                        response.addCookie(cookie); 
                    }
                }
            }
        }
    %>
    
	<div class="container">
		<br />	
	    <div class="alert alert-success">
	        <p>登录成功</p>
	    </div>
	    <%
			String username = request.getParameter("username");
			String password = request.getParameter("password");
		%>
		<div class="panel panel-default">
		    <div class="panel-heading">用户信息</div>
		    <div class="panel-body">
		        <p>username: <%= username %></p>
		        <p>password: <%= password %></p>
		    </div>
		</div>
	</div>
	
</body>
</html>