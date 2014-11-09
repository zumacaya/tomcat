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
      <script>
         function validateForm(form) {    
             
              if(form.name.value == ''){
                   alert("Se debe introducir un nombre:");
                   return(false); 
               }
              if(form.palindromo.value == ''){
                   alert("Se debe introducir una palabra capicua:");
                   return(false); 
               }
              if(form.email.value == ''){
                   alert("Se debe introducir un email");
                   return(false); 
               }
              if(form.web.value == ''){
                   alert("Se debe introducir una web:");
                   return(false); 
               }
             if(form.Mensaje.value == ''){
                   alert("Se debe introducir un mensaje:");
                   return(false); 
               }
         var x = form.palindromo.value;
         var   inverseWord =    x.split("").reverse().join(""); 
               if (x  != inverseWord) { 
                   alert("La palabra '" +x +"' no es capicua:");
                   return(false); 
               }
          var y = form.email.value;
          var re = /\S+@\S+\.\S+/;
           if(!re.test(y)){
                alert(y +"' no es un email válido:");
               return(false);
           }
            var regExp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?ºº  +=&%@!\-\/]))?/;
            var z = form.web.value;
           if(!regExp.test(z)){
             alert(z +"' no es una URL válida:");
             return false;
         
           }
                                  alert("Se va a enviar tu mensaje");
         
         
           } 
      </script>
   </head>
   <body>
      <header>
         <h1> <span>Eduardo  </span> Parrado Puente </h1>
                	<%@ include file="menu.jsp"%>

      </header>
      <!-- <div class="row-bot-bg"><h1 style="
         float:center">Sobre mi</h1></div> -->
      <section class="content">
         <h3><fmt:message key="ContactarNosotros" /></h3>
         <section class="columna2" >
            <form class="contact_form" name="form" action="#" method="post" onsubmit="return validateForm(this);">
               <ul>
                  <li>
                     <h2><fmt:message key="ContactarConmigo" /></h2>
                     <p><fmt:message key="ContactarTexto" /><a href="mailto:zumacaya@gmail.com">zumacaya@gmail.com</a> </p>
                  </li>
                  <li>
                     <label for="name"><fmt:message key="Nombre" />:</label>
                     <input  id="name" placeholder="<fmt:message key="NombreText" />" />
                  </li>
                  <li>
                     <label for="name"><fmt:message key="Capicua" />:</label>
                     <input   id="palindromo" placeholder="<fmt:message key="CapicuaText" />"  />
                  </li>
                  <li>
                     <label for="email">Email:</label>
                     <input  id="email" placeholder="ejemplo@ejemplo.com"  />
                  </li>
                  <li>
                     <label for="web"><fmt:message key="SitioWeb" />:</label>
                     <input  id="web" placeholder="http://tuweb.com"  />
                  </li>
                  <li>
                     <label for="Mensaje"><fmt:message key="Mensaje" />:</label>
                     <textarea id="Mensaje" cols="40" rows="6"  ></textarea>
                  </li>
                  <li>
                     <button class="submit" type="submit">Enviar</button>
                  </li>
               </ul>
            </form>
         </section>
      </section>
            	<%@ include file="footer.jsp"%>

   </body>