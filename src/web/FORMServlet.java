package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FORMServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest peticion,
			HttpServletResponse respuesta)
	throws ServletException, IOException{
		
		String nombre = peticion.getParameter("nombre");
		
		String apellido = peticion.getParameter("apellido");
		
		String email = peticion.getParameter("email");
		
		int edad = Integer.parseInt(peticion.getParameter("edad"));
		
		String nomCompleto = "";
		
		String mayorEdad = "";
				
		if(edad >= 18) {
			
			nomCompleto = ""+nombre +" "+ apellido;
			mayorEdad =""+ "Es mayor de edad, su email es: " + email;
						
		}else{
			
			nomCompleto = "" + nombre + apellido;
			mayorEdad = "" + "Es menor de edad no se puede mostrar correo";
			
		}
		
		peticion.getSession().setAttribute("nomCompleto", nomCompleto);
		peticion.getSession().setAttribute("mayorEdad", mayorEdad);
		peticion.getSession().setAttribute("edad", edad);		
		respuesta.sendRedirect("index.jsp");
		
	}


}
