<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 8]> <html class="ie6"> <![endif]-->
<!--[if gte IE 8]><!--> <html> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/eIBS_R04M07/pages/style.css" rel="stylesheet"/>
<link rel="StyleSheet" type="text/css" href="resources/css/jquery-ui-1.8.4.custom.css">
<link href="${basePath}/resources/css/main.css" rel="stylesheet"/>
<style type="text/css">
	.range{display: none;}
	#resultado tbody td {text-align: center;}
	select{width: 200px;}
	td.col-input{width: 30%;}
</style>
<style type="text/css">
	.ui-datepicker-trigger { float: none; }
	.ui-datepicker-title{color:#CC0000;font:bold 11px Arial,Helvetica,sans-serif;text-align:center;text-transform:capitalize;vertical-align:top;}
	.ui-datepicker-append {margin-left: 5px;}
	.ui-datepicker-trigger{vertical-align:top;margin-left:2px;}
</style>
<script type="text/javascript" src='${basePath}/resources/js/jquery-1.4.2.min.js'></script>
<script type="text/javascript" src="${basePath}/resources/js/jquery-ui-1.8.4.custom.min.js"></script>
<script type="text/javascript" src="${basePath}/resources/js/local.datepicker.js"></script>
<script type="text/javascript" src="${basePath}/resources/js/jquery.validate-1.7.min.js"></script>
<script type="text/javascript" src="${basePath}/resources/js/local.validate.js"></script>
<script type="text/javascript" src="${basePath}/resources/js/jquery.meiomask.js"></script>
<!--[if IE 6]>
<script type="text/javascript">
try {
  document.execCommand("BackgroundImageCache", false, true);
} catch(e) {}
</script>
<![endif]-->

<script language="javascript">




</script>
<title>Consulta Solicitudes</title>
</head>
<body>
<h3 align="center">
	Ingreso Campañas
	<img src="http://chlwascotia.chl.bns:31056/eIBS_R04M07/images/e_ibs.gif" align="left" name="EIBS_GIF" alt="st_list_fv.jsp,ECIF030">
</h3>
<hr size="4">
<h4></h4>
<form:form method="post" commandName="Campana">
<table class="TABLEINFO" border="1" border="1" align="center">

<tr> 
    <td>
    	 <table border="1" align="center">
			<tr>
				<td class="label">Tipo Mensaje: </td>
				 <td ><form:select path="tipoMensaje" items="${tipoMensajeMap}" cssErrorClass="inputError"/>
				</td>
				<td class="label">Periodo: </td>
				 <td ><form:select path="periodicidad" items="${periodicidadMap}" cssErrorClass="inputError"/>
				</td>
				
			</tr>
			<tr>
				<td class="label">Canal: </td>
				 <td ><form:select path="canal" items="${canalMap}" cssErrorClass="inputError"/>
				</td>
				<td class="label">Prioridad: </td>
				 <td ><form:select path="prioridad" items="${prioridadMap}" cssErrorClass="inputError" size="1" />
				</td>
				
			</tr>
			<tr>
			<td class="label">Descripcion: </td>
				<td><form:input path="descripcion" size="20" maxlength="20"/></td>
			    <td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			
			<tr>
			    <td class="label">Fecha Inicio: </td>
				<td><form:input path="fecIni" size="20" maxlength="20"/></td>
			    <td class="label">Fecha Final: </td>
				<td><form:input path="fecFin" size="20" maxlength="20"/></td>
			</tr>
			
			<tr>
			    <td class="label">Descripcion Template: </td>
				<td><form:input path="fecIni" size="20" maxlength="20"/></td>
			    <td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			
			<tr>
			    <td class="label">Archivo  Template: </td>
				<td><input type="text"/><input type="file" name="file" size="algo"></td>
			</tr>
			<tr>
			     <td class="label">Archivo  Clientes: </td>
				<td><input type="text"/><input type="file" name="file" size="algo"> </td>
			</tr>
			
			
			
			
		</table>
	</td>
</tr>
</td></tr>
</table>

  <p class="botonera"> 
	<input class="eibsbtn" type="submit" name="enviar" value="Enviar"/>
	<input class="eibsbtn" type="submit" name="exportar" value="Exportar"/>	
  </p>


</form:form>
</body>
</html>