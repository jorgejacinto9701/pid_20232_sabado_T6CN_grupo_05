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
       
    }


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

	private void grabarUsuario(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//variables
		String cod,nom,ape,ema,contra,tele,estado,msj;
		//leer los controles del formulario(cajas,select)
		cod=request.getParameter("IdUsuario");
		nom=request.getParameter("nombre");
		ape=request.getParameter("apellido");
		ema=request.getParameter("email");
		contra=request.getParameter("contraseña");
		tele=request.getParameter("telefono");

		estado=request.getParameter("Estado");
	
		//crear objeto de la clase Docente
		Usuarios bean=new Usuarios();
		//setear los atributos del objeto "bean" con las variables
		bean.setIdUsuario(Integer.parseInt(cod));
		bean.setNombre(nom);
		bean.setApellido(ape);
		bean.setEmail(ema);
		bean.setContraseña(contra);
		bean.setTelefono(tele);
		bean.setEstado(estado);
		
		//validar c�digo
		if(Integer.parseInt(cod)==0) {
			//invocar al m�todo save
			int salida;
			salida= usuarioservice.save(bean);
			//validar "estado"		
			if(salida>0)
				//crear atributo
				msj="El usuario se ha registrado correctamente";
			else
				//crear atributo
				msj="Hubo un error en el registro del usuario";}
			
			else {
				//invocar al m�todo update
				int salida;
				salida=usuarioservice.update(bean);
				//validar "estado"		
				if(salida>0)
					//crear atributo
					msj="Usuario actualizado correctamente";
				else
					//crear atributo
					//request.setAttribute("MENSAJE", "Error en la actualizaci�n");
					msj="Error en la actualizaci�n";
			}
			//invocar
			
			response.sendRedirect("Usuario.jsp?MENSAJE="+msj);
		
		
	

	}

}
