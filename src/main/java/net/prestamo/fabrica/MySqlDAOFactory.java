package net.prestamo.fabrica;

import net.prestamo.DAO.MySqlUsuariosDAO;
import net.prestamo.interfaces.UsuariosDAO;


public class MySqlDAOFactory extends DAOFactory {



	@Override
	public UsuariosDAO getUsuariosDAO() {
		// TODO Auto-generated method stub
		return new MySqlUsuariosDAO();
	}
	
	


}