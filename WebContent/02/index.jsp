<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<p>去msg.jsp</p>
<jsp:forward page="msg.jsp">
	<jsp:param value="lyj" name="name" />
	<jsp:param value="24" name="age" />
</jsp:forward>