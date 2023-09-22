package net.prestamo.fabrica;

import net.prestamo.DAO.MySqlPrestamistaDAO;
import net.prestamo.DAO.MySqlUsuariosDAO;
import net.prestamo.interfaces.PrestamistaDAO;
import net.prestamo.interfaces.UsuariosDAO;


public class MySqlDAOFactory extends DAOFactory {

	@Override
	public UsuariosDAO getUsuariosDAO() {
		// TODO Auto-generated method stub
		return new MySqlUsuariosDAO();
	}

	@Override
	public PrestamistaDAO getPrestamistaDAO() {
		// TODO Auto-generated method stub
		return new MySqlPrestamistaDAO();
	}
	
	

}