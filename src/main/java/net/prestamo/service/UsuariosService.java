package net.prestamo.service;

import java.util.List;


import net.prestamo.entidad.Usuarios;
import net.prestamo.fabrica.DAOFactory;
import net.prestamo.interfaces.UsuariosDAO;

public class UsuariosService {
	
	private DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	private UsuariosDAO objUsu=fabrica.getUsuariosDAO();

	
	
	public int save (Usuarios bean) {
		return objUsu.save(bean);
	}
	
	public int update (Usuarios bean) {
		return objUsu.update(bean);
	}
	
	public int delete(int cod) {
		return objUsu.delete(cod);
	}
	public List<Usuarios> listarUsuarios(){
		return objUsu.listAll();
	}
	public Usuarios buscar(int cod) {
		return objUsu.buscar(cod);
	}

	

}
