package net.prestamo.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


import net.prestamo.entidad.Respuesta;

import net.prestamo.entidad.Solicitud;
import net.prestamo.entidad.Usuarios;
import net.prestamo.fabrica.DAOFactory;
import net.prestamo.fabrica.MySqlDAOFactory; 
import net.prestamo.interfaces.SolicitudDAO;
import net.prestamo.model.SolicitudModel;


@WebServlet("/registraSolicitud")
public class ServletSolicitud extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String vmon = req.getParameter("monto");
		String vfin = req.getParameter("fechaIni");
		String vffi = req.getParameter("fechaFin");
		String vusu = req.getParameter("usuario");
		
		Usuarios objUsuarios = new Usuarios();
		objUsuarios.setIdUsuario(Integer.parseInt(vusu));
		
		
		Solicitud objSolicitud = new Solicitud();
		objSolicitud.setMonto(Double.parseDouble(vmon));
		objSolicitud.setFechaInicioPrestamo(Date.valueOf(vfin));
		objSolicitud.setFechaFinPrestamo(Date.valueOf(vffi));
		objSolicitud.setFechaRegistro(new Timestamp(System.currentTimeMillis()));
		objSolicitud.setUsuarios(objUsuarios);
		objSolicitud.setEstado(1);
		
		//DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
		//SolicitudDAO dao = fabrica.getSolicitudDAO();
		
		//int insertados = dao.insertaSolicitud(objSolicitud);
		
		SolicitudModel solicitudModel = new SolicitudModel();
		int s = solicitudModel.insertaSolicitud(objSolicitud);
		
		Respuesta objRespuesta = new Respuesta();
		if (s>0) {
			objRespuesta.setMensaje("Registro exitoso");	
		}else {
			objRespuesta.setMensaje("Error al registrar");
		}
		
		//Convertir a json
		Gson gson = new Gson();
		String json = gson.toJson(objRespuesta);
		
		//Se notifica el tipo de archivo a enviar
		resp.setContentType("application/json;charset=UTF-8");
		
		//Se envía al Browser
		PrintWriter out = resp.getWriter();
		out.println(json);
	}
}
