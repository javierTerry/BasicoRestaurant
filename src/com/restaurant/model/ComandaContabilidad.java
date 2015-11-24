package com.restaurant.model;

public class ComandaContabilidad {
	
	private int subTotal = 1;
	private String ticket = "Sin ticket";
	
	
	public int getSubTotal() {
		return subTotal;
	}


	public void setSubTotal(int subTotal) {
		this.subTotal = subTotal;
	}


	public String getTicket() {
		return ticket;
	}


	public void setTicket(String ticket) {
		this.ticket = ticket;
	}


	@Override
    public String toString() {
        return ticket + "," + subTotal ;
    }
	

}
