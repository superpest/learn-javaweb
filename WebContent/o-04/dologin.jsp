<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="users" class="site.bean.Signin" scope="page"/>
<jsp:setProperty property="*" name="users"/>

<jsp:useBean id="userDAO" class="site.dao.UsersDAO" scope="page"/>

<%
	if(userDAO.usersLogin(users)){
	   session.setAttribute("username", users.getUserName());
	   request.getRequestDispatcher("login-success.jsp").forward(request, response);
	}else{
	   response.sendRedirect("login-failure.jsp");
	}
%>