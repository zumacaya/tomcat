<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${not empty param.language}">
	<c:set var="language" value="${param.language}" scope="session" />
</c:if>
<c:if test="${empty language}">
	<c:set var="language" value="${pageContext.request.locale}"
		scope="session" />
</c:if>
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="text" />

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Eduardo Parrado Puente</title>
<link rel="stylesheet" type="text/css" media="(max-width: 768px)"
	href="estilo.min.css" />
<link rel="stylesheet" type="text/css" media="(min-width: 768px)"
	href="estilo.css" />
<link rel="stylesheet" type="text/css" href="estilo.print.css"
	media="print" />
</head>
<body>
	<header>
		<h1>
			<span>Eduardo </span> Parrado Puente
		</h1>
		<%@ include file="menu.jsp"%>

	</header>
	<section class="content">
		<h2 class="h2inicio"><fmt:message key="Presentacion" /></h2>
		<aside class="columna1">
			<img class="roundrect" src="foto.jpg"
				alt="Foto Eduardo Parrado Puente">
			<p>
				<a href="mailto:zumacaya@gmail.com">zumacaya@gmail.com</a>
			</p>
		</aside>
		<section class="columna2">
	
			<h2><fmt:message key="Datos_Personales" /></h2>
			<article class="columna3">
				<h2><fmt:message key="Sobre" /></h2>
				<p>Eduardo Parrado Puente</p>
				<p>
					<b>UO:</b>221513
				</p>
				<p>
					<b>DNI:</b>71561737C
				</p>
				<p><fmt:message key="Estudiante" /></p>
				<p><fmt:message key="Natural" /> La Bañeza (León)</p>
			</article>
			<article class="columna4">
				<h2><fmt:message key="Privada" /></h2>
				<form action="AuthServlet" method="post">
				<fmt:message key="Usuario" />:	<input type="text" name="usuario" /><fmt:message key="Pass" />: <input type="text"
						name="password" /> <input type="submit" value="Aceptar" />
				</form>
				<h2><fmt:message key="Asignaturas" /></h2>
				<table>
					<tr>
						<th colspan="2">Primer Curso. Primer Semestre</th>
					</tr>
					<tr>
						<td>Administración de Sistemas Operativos</td>
						<td></td>
					</tr>
					<tr>
						<td>Lenguajes y estándares para la Web</td>
						<td></td>
					</tr>
						<tr>
						<td>Diseño y programación de interfaces de usuario</td>
						<td></td>
					</tr>
				</table>
				<h2><fmt:message key="Aficiones" /></h2>
				<a href="aficiones.html"><fmt:message key="Acceder" /></a>
				<h2><fmt:message key="TemaLibre" /></h2>
				<a href="desastres-naturales.jsp"><fmt:message key="Acceder" /></a>
				

			</article>
		</section>
	</section>
	<%@ include file="footer.jsp"%>

</body>