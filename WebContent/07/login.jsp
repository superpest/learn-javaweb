<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
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