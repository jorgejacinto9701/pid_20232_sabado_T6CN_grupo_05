package net.prestamo.service;

import java.util.List;

import net.prestamo.entidad.Prestamista;
import net.prestamo.fabrica.DAOFactory;
import net.prestamo.interfaces.PrestamistaDAO;

public class PrestamistaService {
	private DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	private PrestamistaDAO objPresta=fabrica.getPrestamistaDAO();

	
	
	public int save (Prestamista bean) {
		return objPresta.save(bean);
	}
	
	public int update (Prestamista bean) {
		return objPresta.update(bean);
	}
	
	public int delete(int cod) {
		return objPresta.delete(cod);
	}
	public Prestamista buscar(int cod) {
		return objPresta.buscar(cod);
	}
	public List<Prestamista> listarUsuarios(){
		return objPresta.listAll();
	}
	
}
