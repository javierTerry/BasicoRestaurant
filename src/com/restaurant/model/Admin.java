package com.restaurant.model;

import java.util.Date;

public class Admin {

    private int adminid;
    private String firstName;
    private String lastName;
    private Date dob;
    private String email;
    
    
    public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public Date getDob() {
        return dob;
    }
    public void setDob(Date dob) {
        this.dob = dob;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    @Override
    public String toString() {
        return "User [userid=" + adminid + ", firstName=" + firstName
                + ", lastName=" + lastName + ", dob=" + dob + ", email="
                + email + "]";
    }    
}