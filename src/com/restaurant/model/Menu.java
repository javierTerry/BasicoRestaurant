package com.restaurant.model;

public class Menu {
	
	private String id;
	private String descripcion = "";
	private int precio = 1;
	private String fecha = "";
	private String editar = "editar";
	private String agregar = "agregar";
	
	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getPrecio() {
		return precio;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}
	

	public String getEditar() {
		return editar;
	}
	
	public String getAgregar() {
		return agregar;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	@Override
    public String toString() {
        return id + "," + descripcion + "," + precio + "," +fecha;
    }
	

}