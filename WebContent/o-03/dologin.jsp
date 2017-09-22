<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<jsp:forward page="user.jsp">
  <jsp:param value="admin@123.net" name="email"/>
  <jsp:param value="888888" name="password"/>
</jsp:forward>