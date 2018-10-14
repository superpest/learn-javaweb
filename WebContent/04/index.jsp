<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
     <p>登陆</p>
	<form action="signin.jsp" method="post">
	    <div>
	        <label for="">username</label>
	        <input type="text" name="userName">
	    </div>
	    <div>
	        <label for="">password</label>
	        <input type="password" name="password">
	    </div>
	    <input type="submit" value="signin">
	</form>
</body>
</html>