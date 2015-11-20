package com.restaurant.model;

public class Reservacion {
	
	private String nombre = "Javier";
	private String email = "test@gmail.com";
	private int telefono = 0;
	private int noPersonas = 1;
	private String horaReservacion = "";
	private String fecha = "";
	private String uuid = ""; 
	
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public int getNoPersonas() {
		return noPersonas;
	}
	public void setNoPersonas(int noPersonas) {
		this.noPersonas = noPersonas;
	}
	public String getHoraReservacion() {
		return horaReservacion;
	}
	public void setHoraReservacion(String horaReservacion) {
		this.horaReservacion = horaReservacion;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	
	
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	@Override
    public String toString() {
        return uuid + "," + nombre + "," + email + "," + telefono + "," + noPersonas + "," + horaReservacion + "," + fecha;
    }
	

}
