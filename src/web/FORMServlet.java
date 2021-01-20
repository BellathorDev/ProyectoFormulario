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
		
		String resultado = "";
		
		if(edad >= 18) {
			
			resultado =""+"\nNombre Completo: "+ nombre +" "+ apellido + "\nEdad:"+edad+" (Mayor de edad)" + "\nCorreo: "+email;
			
		}else{
			resultado =""+"\nNombre Completo: "+ nombre +" "+ apellido + "\nEdad:"+edad+" (Menor de edad)";
			
		}
		
		peticion.getSession().setAttribute("resultado", resultado);
		respuesta.sendRedirect("index.jsp");
		
	}


}
