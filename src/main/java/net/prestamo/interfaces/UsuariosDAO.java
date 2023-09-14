package net.prestamo.interfaces;

import java.util.List;


import net.prestamo.entidad.Usuarios;

public interface UsuariosDAO {
	
	public int save (Usuarios bean);
	public int update(Usuarios bean);
	public int delete(int cod);
	public Usuarios buscar(int cod);
	public List<Usuarios> listAll();
	

}
