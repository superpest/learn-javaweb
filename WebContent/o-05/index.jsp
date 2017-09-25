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
			ItemsDAO itemsDao = new ItemsDAO();
			ArrayList<Items> list = itemsDao.getAllItems();
			if(list!=null && list.size()>0){
				for(int i=0;i<list.size();i++){
					Items item = list.get(i);
				%>
			
			<a class="media" href="details.jsp?id=<%= item.getId()%>">
				<div class="media-left media-middle">
					<p>
						<img class="media-object" src="../images/<%= item.getPicture()%>" width="200">
					</p>
				</div>
				<div class="media-body">
					<h4 class="media-heading"><%= item.getName() %></h4>
					<p><%= item.getCity() %>&nbsp;&nbsp;价格:￥ <%=item.getPrice() %></p>
				</div>
			</a>	
				
		<% 
				}
			}
		%>
	</div>
    
	
</body>
</html>