<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
	<p>把jstl的包拿进来，然后用 &lt%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core %&gt  就好了</p>
   		<h1> set 写一个变量，out输出一个变量</h1>
		1 <c:out value="&lt 转义" escapeXml="true"> 默认值 </c:out>  <br />
		2 <c:out value="&lt 不转义" escapeXml="false"> 默认值 </c:out>   <br />
		
		
		3 <c:out value="${null}" escapeXml="true"> 使用默认值 </c:out>   <br />
			
 
   		<h1>if 判断</h1>
   		<c:set var="age" scope="session" value="20"/>
		<c:if test="${age > 18}">
		    <p>你是成年人，今年<c:out value="${age}" /></p>
		</c:if>
		   	
		<h1>forEach</h1>	
	   	<c:forEach var="i" begin="1" end="5">
		  <p><c:out value="${i}" /></p>
		</c:forEach>
		
		<h1>forTokens</h1>	
		
		<c:forTokens items="apple,banane,canade" delims="," var="name">
		  <c:out value="${name}" />
		</c:forTokens>
		
		<h1>choose when</h1>	
		<c:choose>
		    <c:when test="${age > 18}">
		        <p>成年了</p>
		    </c:when>
		    <c:otherwise>
		        <p>小屁孩</p>
		    </c:otherwise>
		</c:choose>
		<p>import 获取一个页面的内容，然后显示出来</p>
		<c:import var="data" url="/index.jsp"/>
		<c:out value="${data}" />
</body>
</html>