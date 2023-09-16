package net.prestamo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Logger;

import net.prestamo.entidad.Solicitud;
import net.prestamo.interfaces.SolicitudDAO;
import net.prestamo.model.SolicitudModel;
import net.prestamo.utils.MySqlConexion;

public class MySqlSolicitudDAO implements SolicitudDAO{

private static Logger log = Logger.getLogger(SolicitudModel.class.getName());
	
	public int insertaSolicitud(Solicitud obj) {
		int salida = -1;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		try {
			 
			conn = MySqlConexion.getConexion();
			
			String sql = "insert into solicitud values(null,?,?,?,?,?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setDouble(1, obj.getMonto());
			pstm.setDate(2, obj.getFechaInicioPrestamo());
			pstm.setDate(3, obj.getFechaFinPrestamo());
			pstm.setTimestamp(4, obj.getFechaRegistro());
			pstm.setInt(5, obj.getUsuarios().getIdUsuario());
			pstm.setInt(6, obj.getEstado());
			
	
			
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
