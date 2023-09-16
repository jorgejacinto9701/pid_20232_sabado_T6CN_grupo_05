package net.prestamo.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Logger;
import net.prestamo.entidad.Solicitud;
import net.prestamo.utils.MySqlConexion;


public class SolicitudModel {

    //para imprimir el consola
	private static Logger log = Logger.getLogger(SolicitudModel.class.getName());
	
	public int insertaSolicitud(Solicitud obj) {
		int salida = -1;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		try {
			conn = MySqlConexion.getConexion();
			
			String sql = "insert into solicitud values(null,?,?,?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setDouble(1, obj.getMonto());
			pstm.setDate(2, obj.getFechaInicioPrestamo());
			pstm.setDate(3, obj.getFechaFinPrestamo());
			pstm.setInt(4, obj.getUsuarios().getIdUsuario());
			
	
			
			log.info(">>>> " + pstm);

			salida = pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null) pstm.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {}
		}
		
		return salida;
	}
	
}
