package com.restaurant.model;

public class Comanda {
	
	private String descripcion = "";
	private int precio = 0;
	private int cantidad = 0;
	private int subTotal = 0;
	private String ticket = "No aplica";
	
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

	public String getTicket() {
		return ticket;
	}

	public void setTicket(String Ticket) {
		this.ticket = Ticket;
	}

	@Override
    public String toString() {
        return ticket + "," + descripcion + "," + precio + "," + cantidad + "," + subTotal ;
    }
	

}
