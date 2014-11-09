<nav>
	<ul class="menu">
		<li><a href="index.jsp"><fmt:message key="Principal" /></a></li>
		<li><a href="aficiones.jsp"><fmt:message key="Aficiones" /></a></li>
		<li><a href="contacto.jsp"><fmt:message key="Contacto" /></a></li>
		<li>Idioma:	<c:out value="${language}"/>
		</li>
		<li><form>
            <select id="language" name="language" onchange="submit()">
                <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                <option value="es" ${language == 'es' ? 'selected' : ''}>Español</option>
            </select>
        </form></li>
	</ul>
 
</nav>