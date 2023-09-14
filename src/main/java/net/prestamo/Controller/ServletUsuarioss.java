package net.prestamo.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.prestamo.entidad.Usuarios;
import net.prestamo.service.UsuariosService;


@WebServlet("/ServletUsuarioss")
public class ServletUsuarioss extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UsuariosService usuarioservice=new UsuariosService();
	
    public ServletUsuarioss() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//recuperar p�rametro "accion" que viene de la p�gina docente.jsp para saber que acci�n se va a realizar
				String tipo;
				tipo=request.getParameter("accion");
				//evaluar el tipo de acci�n
				if(tipo.equals("GRABAR"))
					grabarUsuario(request,response);
				else if(tipo.equals("ELIMINAR"))
					eliminarUsuario(request,response);
				else if(tipo.equals("LISTAR"))
					listarUsuario(request,response);	
				else if(tipo.equals("BUSCAR"))
					buscarUsuario(request,response);
			}

	private void buscarUsuario(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void listarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//invocar al m�todo listAll
				List<Usuarios> datos=usuarioservice.listarUsuarios();
				//crear atributo
				request.setAttribute("usuario", datos);
				//crear atributo para almacenar todas las condiciones
				request.getRequestDispatcher("/Usuario.jsp").forward(request, response);
	}

	private void eliminarUsuario(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void grabarUsuario(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	
	}

}
