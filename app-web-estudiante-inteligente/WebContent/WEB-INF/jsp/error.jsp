<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 8]> <html class="ie6"> <![endif]-->
<!--[if gte IE 8]><!--> <html> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
<style type="text/css">
.error{	color:red;	font-weight: bolder;text-align:center;}
</style>
</head>
<body>
<h1 class="error">
<c:choose>
	<c:when test="${!empty errorMessage}">
		<c:out value="errorMessage"></c:out>
	</c:when>
	<c:otherwise>
		<spring:message code="${errorKey}" text="No ha sido posible completar la transaccion."/>
	</c:otherwise>
</c:choose>
</h1>
</body>
</html>