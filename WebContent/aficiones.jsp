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
         <h2 class="h2inicio"><fmt:message key="MisAficiones" /></h2>
         <section class="columna2" >
            <h3><fmt:message key="MeGusta" /></h3>
            <article class="columna3">
               <h2><fmt:message key="Aficiones" />.</h2>
               <dl>
                  <dt>-<fmt:message key="Viajar" /></dt>
                  <dd>- <fmt:message key="ViajarTexto" /> </dd>
                  <dt>- <fmt:message key="Programar" /></dt>
                  <dd>-<fmt:message key="ProgramarTexto" /></dd>
               </dl>
            </article>
            <article class="columna4">
               <h2><fmt:message key="Video" /></h2>
               <p><fmt:message key="VideoTexto" />.</p>
               <video width="394" height="296" controls>
                  <source src="http://zumacaya.com/master/web/video.mp4" type="video/mp4">
                  Your browser does not support the video tag.
               </video>
            </article>
         </section>
      </section>
    	<%@ include file="footer.jsp"%>
   </body>