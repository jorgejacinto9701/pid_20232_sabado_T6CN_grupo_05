package net.prestamo.interfaces;

import java.util.List;

import net.prestamo.entidad.Prestamista;

public interface PrestamistaDAO {
	public int save (Prestamista bean);
	public int update(Prestamista bean);
	public int delete(int cod);
	public Prestamista buscar(int cod);
	public List<Prestamista> listAll();
}
