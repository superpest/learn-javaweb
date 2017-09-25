<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="site.bean.Items" %>
<%@ page import="site.dao.ItemsDAO" %>
  
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
	<div class="container">
		<br />
	<%
		ItemsDAO itemDao = new ItemsDAO();
	 	Items item = itemDao.getItemsById(Integer.parseInt(request.getParameter("id")));	
	 	 if(item!=null){
		
	%>
		<div class="media">
			<div class="media-left media-middle">
				<p>
					<img class="media-object" src="../images/<%= item.getPicture()%>" width="400">
				</p>
			</div>
			<div class="media-body">
				<h4 class="media-heading"><%= item.getName() %></h4>
				<p>产地：<%= item.getCity() %></p>
				<p>价格:￥ <%=item.getPrice() %></p>
			</div>
		</div>	
		<% } %>
	</div>
    
	
</body>
