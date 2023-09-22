package net.prestamo.interfaces;

import java.util.List;

import net.prestamo.entidad.Solicitud;


public interface SolicitudDAO {

	public abstract int insertaSolicitud(Solicitud obj);
	public int save (Solicitud bean);
	public int update(Solicitud bean);
	public int delete(int cod);
	public List<Solicitud> listAll();
	 
}
