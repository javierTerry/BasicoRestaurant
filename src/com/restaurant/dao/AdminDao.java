package com.restaurant.dao;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.restaurant.model.Admin;
import com.restaurant.model.Comanda;
import com.restaurant.model.Menu;
import com.restaurant.model.Reservacion;
//import com.daniel.util.DbUtil;

public class AdminDao {

    private Connection connection;
    private String home = System.getProperty("user.home");
    private String archivoReservacion = "reservacion.txt";
    private String archivoComanda = "comanda.txt";
    private String archivoMenu = "menus.txt";
    
    public AdminDao() {
    	try {
			new FileWriter(home + "/"+ archivoMenu,true);
			new FileWriter(home + "/"+ archivoReservacion,true);
			new FileWriter(home + "/"+ archivoComanda,true);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    public void writeFile(String cadena, String file) {
    	 try {
             FileWriter fileWriter =
                 new FileWriter(home + "/"+file,true);

             // Always wrap FileWriter in BufferedWriter.
             BufferedWriter bufferedWriter =
                 new BufferedWriter(fileWriter);
             bufferedWriter.write(cadena+"\n");

             // Always close files.
             bufferedWriter.close();
         }
         catch(IOException ex) {
             System.out.println(
                 "Error writing to file '"
                 + archivoReservacion + "'");
             // Or we could just do this:
             // ex.printStackTrace();
         }
	}
    public BufferedReader readFile(String archivo){
    	BufferedReader bfFile = null;
    	try{
    		bfFile = new BufferedReader(new FileReader(home + "/"+ archivo));
     	      
    	} catch(IOException ex) {
    		System.out.println(
                    "Error writing to file read'"
                    + archivo + "'");
    	}
		return bfFile;
    
    }

    public void reservacionSave(Reservacion reservacion){
    	this.writeFile(reservacion.toString(),archivoReservacion);
    	
    }
    
    public List<Reservacion> listaReservacion() {
    	BufferedReader bfFile = null;
    	List<Reservacion> reservaciones = new ArrayList<Reservacion>();
    	try{
    		bfFile = this.readFile(archivoReservacion);
  	        String dataRow; //= bfFile.readLine();
  	     
  	    int i = 0; 
	      while ((dataRow = bfFile.readLine()) != null ){
	          Reservacion reservacion = new Reservacion();
	    	  i++;
	          
	          String[] dataArray = dataRow.split(",");
	          reservacion.setNombre(dataArray[0]);
	          reservacion.setEmail(dataArray[1]);
	          reservacion.setTelefono( Integer.parseInt(dataArray[2]));
	          reservacion.setNoPersonas(Integer.parseInt(dataArray[3]));
	          reservacion.setHoraReservacion(dataArray[4]);
	          reservacion.setFecha(dataArray[5]);
	          reservaciones.add(reservacion);
	        }
    	} catch(IOException ex) {
    		System.out.println(
                    "Error writing to file reservaciones'"
                    + archivoReservacion + "'");
    	}  
    	return reservaciones;
    	
    }
    
    public void comandaSave(Comanda comanda){
    	this.writeFile(comanda.toString(),archivoComanda);
    	
    }
    
    public List<Comanda> contabilidad() {
    	BufferedReader bfFile = null;
    	List<Comanda> comandas = new ArrayList<Comanda>();
    	try{
    		bfFile = this.readFile(archivoComanda);
  	        String dataRow;
  	     
  	    int i = 0; 
  	  
	      while ((dataRow = bfFile.readLine()) != null ){
	          Comanda comanda = new Comanda();
	    	  i++;
	          
	          String[] dataArray = dataRow.split(",");
	          comanda.setDescripcion(dataArray[0]);
	          comanda.setPrecio(Integer.parseInt(dataArray[1]));
	          comanda.setCantidad( Integer.parseInt(dataArray[2]));
	          comanda.setSubTotal(Integer.parseInt(dataArray[3]));
	          comandas.add(comanda);
	        }
    	} catch(IOException ex) {
    		System.out.println(
                    "Error writing to file comandas '"
                    + archivoReservacion + "'");
    	}  
    	return comandas;
    	
    }
    
    public List<Menu> menuRegristado() {
    	BufferedReader bfFile = null;
    	List<Menu> menus = new ArrayList<Menu>();
    	try{
    		bfFile = this.readFile(home + "/" + archivoMenu);
  	        String dataRow;
  	     
  	        int i = 0; 
  	  
		  /*    while ((dataRow = bfFile.readLine()) != null ){
		          Menu menu = new Menu();
		    	  i++;
		          
		          String[] dataArray = dataRow.split(",");
		          
		          menus.add(menu);
	        }*/
    	} catch(Exception ex) {
    		System.out.println(
                    "Error writing to fileMenu '"
                    + archivoReservacion + "'");
    	}  
    	return menus;
    	
    }
        
}