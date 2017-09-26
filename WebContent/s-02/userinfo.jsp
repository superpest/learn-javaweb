<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
 
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
	<jsp:useBean  id="regUser" class="site.bean.Users" scope="session" />  
    <div class="container">
    	<br>
    	<h1>用户信息</h1>
		
		    <table class="table table-bordered">
		        <tr>
		            <td>用户名：</td>
		            <td>
		            	￥
		                <jsp:getProperty name="regUser" property="username"/>
		            </td>
		        </tr>
		        <tr>
		            <td>密码：</td>
		            <td>
		                <jsp:getProperty name="regUser" property="mypassword" />
		            </td>
		        </tr>
		        <tr>
		            <td>电子邮箱：</td>
		            <td>
		                <jsp:getProperty name="regUser" property="email"/>
		            </td>
		        </tr>
		        <tr>
		            <td>性别：</td>
		            <td>
		            	<jsp:getProperty name="regUser" property="gender"/>
	            	</td>
		        </tr>
		        <tr>
		            <td>出生日期：</td>
		            <td class="controler">
		                <% 
			               SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
			               String date = sdf.format(regUser.getBirthday());
			               
			            %>
			             <%=date%>
		            </td>
		        </tr>
		        <tr>
		            <td>爱好：</td>
		            <td>
		            	<% 
			               String[] favorites = regUser.getFavorites();
			               for(String f:favorites)
			               {
			            %>
			                <%=f%> &nbsp;
			            <% 
			               }
			            %>
		            </td>
		        </tr>
		        <tr>
		            <td>自我介绍：</td>
		            <td>
		                <jsp:getProperty name="regUser" property="introduce"/>
		            </td>
		        </tr>
		        <tr>
		            <td>接受协议：</td>
		            <td>
		            	<jsp:getProperty name="regUser" property="flag"/>
		            </td>
		        </tr>
		    </table>
	
		
	</div>
</body>
</html>