package net.prestamo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.prestamo.entidad.Usuarios;
import net.prestamo.interfaces.UsuariosDAO;
import net.prestamo.utils.MySqlConexion;

public class MySqlUsuariosDAO implements UsuariosDAO {

	@Override
	public int save(Usuarios bean) {
		int salida=-1;
		Connection cn=null;
		PreparedStatement pstm=null;
		try {
			cn=MySqlConexion.getConexion();
			//2
			String sql="insert into tb_usuarios values(null,?,?,?,?,?,curtime(),?)";
			//3
			pstm=cn.prepareStatement(sql);
			//4
			pstm.setString(1, bean.getNombre());
			pstm.setString(2, bean.getApellido());
			pstm.setString(3, bean.getEmail());
			pstm.setString(4, bean.getContraseña());
			pstm.setString(5, bean.getTelefono());

			pstm.setString(6, bean.getEstado());
			//5
			salida=pstm.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstm!=null) pstm.close();
				if(cn!=null) cn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return salida;
	}

	@Override
	public int update(Usuarios bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int cod) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Usuarios buscar(int cod) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Usuarios> listAll() {
		List<Usuarios> lista=new ArrayList<Usuarios>();
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConexion();
			String sql="select * from tb_Usuarios  ";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				Usuarios bean=new Usuarios();
				bean.setIdUsuario(rs.getInt(1));
				bean.setNombre(rs.getString(2));
				bean.setApellido(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setContraseña(rs.getString(5));
				bean.setTelefono(rs.getString(6));
				bean.setFechaRegistro(rs.getDate(7));
				bean.setEstado(rs.getString(8));
				
				
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
