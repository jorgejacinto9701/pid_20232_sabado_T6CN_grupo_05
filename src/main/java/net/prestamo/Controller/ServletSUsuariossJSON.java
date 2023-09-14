package net.prestamo.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import net.prestamo.entidad.Usuarios;
import net.prestamo.service.UsuariosService;

/**
 * Servlet implementation class ServletSUsuariossJSON
 */
@WebServlet("/ServletSUsuariossJSON")
public class ServletSUsuariossJSON extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ServletSUsuariossJSON() {
        super();
     
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Usuarios> lista=new UsuariosService().listarUsuarios();
		//PASO 2:crear objeto de la clase Gson
		Gson gson=new Gson();
		//PASO 3: serializar(pasar de objeto JAVA a JSON)
		//m�todo toJson retorna un JSON pero en String
		String json=gson.toJson(lista);
		//PASO 4:indicar al navegador que el formato de salida es un JSON VERDADERO
		response.setContentType("application/json;charset=UTF-8");
		//PASO 5:mostrar el valor de la variable "json" en el navegador
		PrintWriter salida=response.getWriter();
		salida.println(json);
	}

}
