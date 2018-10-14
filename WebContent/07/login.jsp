<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<p>登陆的做法是，把用户的信息写进session.它只属于你，区别cookie是 前端人员看不到，</p>
	<form action="check-login.jsp" method="post">
	    <div>
	        <label for="">username</label>
	        <input type="text" name="username">
	    </div>
	    <div>
	        <label for="">password</label>
	        <input type="password" name="password">
	    </div>
	    <div>
	        <input type="reset" value="reset">
	        <input type="submit" value="submit">
	    </div>
	</form>

</html>