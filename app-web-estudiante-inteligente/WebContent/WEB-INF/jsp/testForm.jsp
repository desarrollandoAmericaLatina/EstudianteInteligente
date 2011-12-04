<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<h1>Hola Mundo</h1>

<form:form id="formulario" method="post" commandName="estudiante" >
	<form:input path="rut" />
	<form:input path="nombre" />
	<input type="submit" name="enviar" value="enviar" />
</form:form>
