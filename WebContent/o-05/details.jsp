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
		<div class="col-sm-8">
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
		
		<%
			String list = "";
			Cookie[] cookies = request.getCookies();
			if(cookies != null && cookies.length>0){
				for(int i=0;i<cookies.length;i++){
					if(cookies[i].getName().equals("ListViewCookie")){
						list = cookies[i].getValue();
					}	
				}
			}
			list += request.getParameter("id")+",";
			String[] arr = list.split(",");
			if(arr != null && arr.length>0){
				if(arr.length>=1000){
					list="";
				}
			}
			Cookie cookie = new Cookie("ListViewCookie",list);
			response.addCookie(cookie);
		%>
		</div>
		<div class="col-sm-4">
			<hr />
			<h4>浏览历史</h4>
			<ol>
			<%
				ArrayList<Items> itemlist = itemDao.getViewList(list);
				if(itemlist != null && itemlist.size()>0){
					for(Items i:itemlist){ %>
			
						<li class="row">
							<div class="col-sm-4">
								<a href="details.jsp?id=<%= i.getId()%>">
									<img src="../images/<%= i.getPicture() %>" width="100%" />
								</a>
							</div>
							<div class="col-sm-8">
								<p><%= i.getName() %></p>
								<p><%= i.getCity() %></p>
								<p><%= i.getPrice() %></p>
							</div>
						</li>
				<% 				
					}
				}
			%>
			</ol>
		</div>
    </div>
	
</body>
