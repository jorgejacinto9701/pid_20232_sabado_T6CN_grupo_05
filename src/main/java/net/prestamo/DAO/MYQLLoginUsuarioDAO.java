package net.prestamo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.prestamo.entidad.Usuarios;
import net.prestamo.utils.MySqlConexion;

public class MYQLLoginUsuarioDAO {
public int ValidarUsu (Usuarios u) {
		
		int rpta = 0;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			// 1
			cn = MySqlConexion.getConexion();
			// 2
			String sql = "select count(IdUsuario)from tb_Usuarios where NombreUsuario=? and Contraseña=?";
			// 3
			pstm = cn.prepareStatement(sql);
			//
			pstm.setString(1, u.getNombre());
			pstm.setString(2, u.getContraseña());
			rs = pstm.executeQuery();
			// 6
			while (rs.next()) {
				
				rpta= rs.getInt(1);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
			try {

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return rpta;
	}


}
