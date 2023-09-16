package net.prestamo.entidad;

import java.sql.Date;
import java.sql.Timestamp;

public class Solicitud {
	
   private int idSolicitud;
   private double monto;
   private Date fechaInicioPrestamo;
   private Date fechaFinPrestamo;
   private Timestamp fechaRegistro;
   private Usuarios usuarios;
   private int estado;
   
   
public int getIdSolicitud() {
	return idSolicitud;
}
public void setIdSolicitud(int idSolicitud) {
	this.idSolicitud = idSolicitud;
}
public double getMonto() {
	return monto;
}
public void setMonto(double monto) {
	this.monto = monto;
}
public Date getFechaInicioPrestamo() {
	return fechaInicioPrestamo;
}
public void setFechaInicioPrestamo(Date fechaInicioPrestamo) {
	this.fechaInicioPrestamo = fechaInicioPrestamo;
}
public Date getFechaFinPrestamo() {
	return fechaFinPrestamo;
}
public void setFechaFinPrestamo(Date fechaFinPrestamo) {
	this.fechaFinPrestamo = fechaFinPrestamo;
}

public Timestamp getFechaRegistro() {
	return fechaRegistro;
}
public void setFechaRegistro(Timestamp fechaRegistro) {
	this.fechaRegistro = fechaRegistro;
}
public Usuarios getUsuarios() {
	return usuarios;
}
public void setUsuarios(Usuarios usuarios) {
	this.usuarios = usuarios;
}
public int getEstado() {
	return estado;
}
public void setEstado(int estado) {
	this.estado = estado;
}

   
   


}
