package net.prestamo.entidad;

public class Prestamista {
	private int idPrestamista;
	private String nombre;
	private String apellido;
	private String direccion;
	private String correo;
	private int dni;
	private String telefono;
	
	public int getIdPrestamista() {
		return idPrestamista;
	}
	public void setIdPrestamista(int idPrestamista) {
		this.idPrestamista = idPrestamista;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public int getDni() {
		return dni;
	}
	public void setDni(int dni) {
		this.dni = dni;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	
}
