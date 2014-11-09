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
      <link rel="stylesheet" type="text/css" media="(max-width: 768px)" href="estilo.min.css" />
      <link rel="stylesheet" type="text/css" media="(min-width: 768px)" href="estilo.css" />
      <link rel="stylesheet" type="text/css" href="estilo.print.css" media="print" />
   </head>
   <body>
      <header>
         <h1> <span>Eduardo  </span> Parrado Puente </h1>
      		<%@ include file="menu.jsp"%>

      </header>
      <!-- <div class="row-bot-bg"><h1 style="
         float:center">Sobre mi</h1></div> -->
      <section class="content">
         <h2 style="h2inicio"><fmt:message key="TemaLibre" /></h2>
         <article class="articulo" >
            <h2><fmt:message key="PeoresDesastres" /></h2>
            <p><fmt:message key="PeoresDesastres1" /> </p>
            <h3><fmt:message key="PeoresDesastres2" /></h3>
            <p> <img src="inundacion.jpg"  alt="Las inundaciones de China en 1931">      <p><fmt:message key="PeoresDesastres3" />  </p>
            </article>
      </section>
    		<%@ include file="footer.jsp"%>

   </body>
