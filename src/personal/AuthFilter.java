package personal;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class AuthFilter
 */
@WebFilter("/AuthFilter")
public class AuthFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public AuthFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		String usuario = (String) ((HttpServletRequest) request).getSession()
				.getAttribute("usuario");
		System.out.println("La petición va :"
				+ ((HttpServletRequest) request).getRequestURI());
		if (usuario == null) {
			// El usuario es NULL, no se ha logueado
			if (((HttpServletRequest) request).getRequestURI().contains(
					"privado")) {
				// La petición no va al index.jsp
				// va a algún recurso de la carpeta "privado"
				// Redirect -> /Trabajo7/index.jsp
				// (hay que poner la ruta entera, sino empieza por '/' es ruta
				// relativa)
				((HttpServletResponse) response)
						.sendRedirect("/Entrega/index.jsp");
			}
			// va fuera de /privado/ le dejamos continuar
			chain.doFilter(request, response);
		} else {
			// va fuera de /privado/ le dejamos continuar
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
