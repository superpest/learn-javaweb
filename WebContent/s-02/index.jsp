<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
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
    	<br>
    	<h1>用户注册</h1>
		<form name="regForm" action="/love/s-02/Regservlet" method="post">
		    <table class="table table-bordered">
		        <tr>
		            <td>用户名：</td>
		            <td>
		                <input type="text" name="username" class="form-control" />
		            </td>
		        </tr>
		        <tr>
		            <td>密码：</td>
		            <td>
		                <input type="password" name="mypassword" class="form-control">
		            </td>
		        </tr>
		        <tr>
		            <td>确认密码：</td>
		            <td>
		                <input type="password" name="confirmpass" class="form-control">
		            </td>
		        </tr>
		        <tr>
		            <td>电子邮箱：</td>
		            <td>
		                <input type="text" name="email" class="form-control">
		            </td>
		        </tr>
		        <tr>
		            <td>性别：</td>
		            <td>
		            	<label class="radio-inline">
		                	<input type="radio" name="gender" checked="checked" value="Male">男
		                </label>
		                <label class="radio-inline">
		                	<input type="radio" name="gender" value="Female">女</td>
		                </label>
		        </tr>
		        <tr>
		            <td>出生日期：</td>
		            <td class="controler">
		                <input name="birthday" type="date" class="form-control"  />
		            </td>
		        </tr>
		        <tr>
		            <td>爱好：</td>
		            <td>
		            	<label class="checkbox-inline">
		                	<input type="checkbox" name="favorite" value="nba"> NBA 
		                </label>
		                <label class="checkbox-inline">
		                	<input type="checkbox" name="favorite" value="music"> 音乐 
		                </label>
		                <label class="checkbox-inline">
		                	<input type="checkbox" name="favorite" value="movie"> 电影 
		                </label>
		                <label class="checkbox-inline">
		                	<input type="checkbox" name="favorite" value="internet"> 上网
		                </label>
		            </td>
		        </tr>
		        <tr>
		            <td>自我介绍：</td>
		            <td>
		                <textarea name="introduce" rows="10" cols="40" class="form-control"></textarea>
		            </td>
		        </tr>
		        <tr>
		            <td>接受协议：</td>
		            <td>
		            	<label class="checkbox-inline">
		                	<input type="checkbox" name="isAccept" value="true">是否接受霸王条款
		                </label>
		            </td>
		        </tr>
		        <tr>
		            <td colspan="2" align="center">
		                <input type="submit" value="注册" class="btn btn-primary" />&nbsp;&nbsp;
		                <input type="reset" value="取消" class="btn btn-primary" />&nbsp;&nbsp;
		            </td>
		        </tr>
		    </table>
	</form>
		
	</div>
</body>
</html>