package net.prestamo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.prestamo.entidad.Prestamista;
import net.prestamo.interfaces.PrestamistaDAO;
import net.prestamo.utils.MySqlConexion;

public class MySqlPrestamistaDAO implements PrestamistaDAO{
	@Override
	public int save(Prestamista bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Prestamista bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int cod) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Prestamista buscar(int cod) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Prestamista> listAll() {
		List<Prestamista> lista=new ArrayList<Prestamista>();
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConexion();
			String sql="select * from tb_prestamistas  ";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				Prestamista bean=new Prestamista();
				bean.setIdPrestamista(rs.getInt(1));
				bean.setNombre(rs.getString(2));
				bean.setApellido(rs.getString(3));
				bean.setDireccion(rs.getString(4));
				bean.setCorreo(rs.getString(5));
				bean.setDni(rs.getInt(6));
				bean.setTelefono(rs.getString(7));
				lista.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(rs!=null) rs.close();
				if(pstm!=null) pstm.close();
				if(cn!=null) cn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return lista;
	}
}
