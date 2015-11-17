package com.restaurant.model;

public class Comanda {
	
	private String descripcion = "";
	private int precio = 1;
	private int cantidad = 1;
	private int subTotal = 1;
	private String notaCosina = "";
	
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

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public int getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(int subTotal) {
		this.subTotal = subTotal;
	}

	public String getNotaCosina() {
		return notaCosina;
	}

	public void setNotaCosina(String notaCosina) {
		this.notaCosina = notaCosina;
	}

	@Override
    public String toString() {
        return descripcion + "," + precio + "," + cantidad + "," + subTotal + "," + notaCosina ;
    }
	

}
