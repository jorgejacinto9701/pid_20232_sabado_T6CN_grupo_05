package net.prestamo.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.prestamo.DAO.MYQLLoginUsuarioDAO;
import net.prestamo.entidad.Usuarios;


@WebServlet("/ServletLoginUsuarios")
public class ServletLoginUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletLoginUsuarios() {
        super();
       
    }

    //ser
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MYQLLoginUsuarioDAO dao = new MYQLLoginUsuarioDAO();
		Usuarios u = new Usuarios();
		int rpta=0;
		if(request.getParameter("accion") !=null) {
			String nombre = request.getParameter("nombre");
			String contraseña = request.getParameter("contraseña");
			u.setNombre(nombre);
			u.setContraseña(contraseña);
			try {
				rpta = dao.ValidarUsu(u);
			} catch (Exception e1) {
			 e1.printStackTrace();
			}
			if(rpta !=0) {
				response.sendRedirect("Menu.jsp");
			}else {
				response.sendRedirect("Index.jsp?rpta="+rpta);
			}
		}
	
	}

}
