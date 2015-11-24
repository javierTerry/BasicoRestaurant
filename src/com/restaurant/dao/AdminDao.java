package com.restaurant.dao;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.restaurant.model.Admin;
import com.restaurant.model.Comanda;
import com.restaurant.model.ComandaContabilidad;
import com.restaurant.model.Menu;
import com.restaurant.model.Reservacion;
//import com.daniel.util.DbUtil;

public class AdminDao {

    private Connection connection;
    private String home = System.getProperty("user.home");
    private String archivoReservacion = "reservacion.txt";
    private String archivoComanda = "comanda.txt";
    private String archivoMenu = "menus.txt";
    
    private String pathReservacion = "reservaciones/";
    private String pathComanda = "comandas/";
    private String pathMenu = "menus/";
   
    protected String path;
    public AdminDao() {
    	try {
    		Date date = new Date();
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    		String formattedDate = sdf.format(date);
    		
    		path = "/restaurant/" + formattedDate + "/";
    		File folder = new File(home + "/" +path);
    		if ( !folder.exists()){
    			folder.mkdirs();
    			File folderMenu = new File(home + path + pathMenu);
    			folderMenu.mkdirs();
    			File folderReservacion = new File(home + path + pathReservacion);
    			folderReservacion.mkdirs();
    			File folderComanda = new File(home + path + pathComanda);
    			folderComanda.mkdirs();
    			
    		}
    		
    		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    public void writeFile(String cadena, String file, Boolean append) {
    	 String destino = home + path +file; 
    	try {
    		
    		 System.out.println(">>>>>>>>>>>>>>>>>>>>>" + destino);
             FileWriter fileWriter =
                 new FileWriter(destino,append);

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
                 + destino + "'");
         }
	}
    public BufferedReader readFile(String archivo){
    	BufferedReader bfFile = null;
    	try{
    		System.out.println(home + path + archivo);
    		bfFile = new BufferedReader(new FileReader(home + path + archivo));
     	      
    	} catch(IOException ex) {
    		System.out.println(
                    "Error reading to file '"
                    + archivo + "'");
    	}
		return bfFile;
    
    }

    public void reservacionSave(Reservacion reservacion, Boolean append){
    	this.writeFile(reservacion.toString(),pathReservacion+archivoReservacion, append);
    	
    }
    
    public List<Reservacion> listaReservacion() {
    	BufferedReader bfFile = null;
    	List<Reservacion> reservaciones = new ArrayList<Reservacion>();
    	try{
    		bfFile = this.readFile(pathReservacion+archivoReservacion);
  	        String dataRow; //= bfFile.readLine();
  	     
  	        int i = 0; 
  	        while ((dataRow = bfFile.readLine()) != null ){
  	        	Reservacion reservacion = new Reservacion();
  	        	i++;
	          
  	        	String[] dataArray = dataRow.split(",");
  	        	reservacion.setUuid(dataArray[0]);
  	        	reservacion.setNombre(dataArray[1]);
  	        	reservacion.setEmail(dataArray[2]);
  	        	reservacion.setTelefono( Integer.parseInt(dataArray[3]));
  	        	reservacion.setNoPersonas(Integer.parseInt(dataArray[4]));
  	        	reservacion.setHoraReservacion(dataArray[5]);
  	        	reservacion.setFecha(dataArray[6]);
  	        	reservaciones.add(reservacion);
	        }
    	} catch(IOException ex) {
    		System.out.println(
                    "Error writing to file reservaciones'"
                    + archivoReservacion + "'");
    	}  
    	return reservaciones;
    	
    }
    
    public void comandaSave(Comanda comanda, String ticket, Boolean append){
    	this.writeFile(comanda.toString(),pathComanda+ticket+".txt", append);
    	
    }
    
    public List<ComandaContabilidad> contabilidad() {
    	
    	List<ComandaContabilidad> comandas = new ArrayList<ComandaContabilidad>();
    	String pathAbsoluteComandas = home + path +pathComanda;
    	String[] nameFile = null;
    	try{
	    	File folder = new File(pathAbsoluteComandas);
	    	for (File file : folder.listFiles() ) {
	    		String sFile = file.getName();
	    		ComandaContabilidad contabilidad = new ComandaContabilidad();
	    		System.out.println(sFile);
	    		System.out.println(nameFile);
		    	BufferedReader bfFile = this.readFile(pathComanda + sFile);
	  	        String dataRow;
	  	     
	  	        int subTotal = 0;
	  	        while ((dataRow = bfFile.readLine()) != null ){
		          
	  	        	String[] dataArray = dataRow.split(",");
	  	        	subTotal = subTotal + Integer.parseInt(dataArray[4]);
	  	        	
		        }
	  	        
	  	        contabilidad.setTicket(sFile);
	  	        contabilidad.setSubTotal(subTotal);
	        	comandas.add(contabilidad);
	    	}
  	        
    	} catch(IOException ex) {
    		System.out.println(
                    "Error writing to file comandas '"
                    + archivoReservacion + "'");
    	}  
    	return comandas;
    	
    }
    
    public List<Comanda> readComanda (String uuid){
    	
    	BufferedReader bfFile = null;
    	List<Comanda> comandas = new ArrayList<Comanda>();
    	try{
    		bfFile = this.readFile(pathComanda + uuid);
  	        String dataRow;
   	     
	        while ((dataRow = bfFile.readLine()) != null ){
	        	Comanda comanda = new Comanda();
	          
	        	String[] dataArray = dataRow.split(",");
	        	comanda.setDescripcion(dataArray[1]);
	        	comanda.setPrecio(Integer.parseInt(dataArray[2]));
	        	comanda.setCantidad( Integer.parseInt(dataArray[3]) );
	        	comanda.setSubTotal( Integer.parseInt(dataArray[4]) );
	        	comandas.add(comanda);
	        }
	  	} catch(IOException ex) {
	  		System.out.println(
	                  "Error writing to file reservaciones'"
	                  + archivoReservacion + "'");
    	
    	} catch (Exception e) {
    		System.out.println("error");
    	}
		return comandas;
    	
    }
    
    public List<Menu> listaMenu() {
    	BufferedReader bfFile = null;
    	List<Menu> menus = new ArrayList<Menu>();
    	try{
    		bfFile = this.readFile(pathMenu+archivoMenu);
  	        String dataRow; //= bfFile.readLine();
  	        
  	        while ((dataRow = bfFile.readLine()) != null ) {
  	        	Menu menu = new Menu();
  	        	
  	        	String[] dataArray = dataRow.split(",");
  	        	
  	        	menu.setId(dataArray[0]);
  	        	menu.setDescripcion(dataArray[1]);
  	        	menu.setPrecio(Integer.parseInt(dataArray[2]));
  	        	menu.setFecha(dataArray[3]);
  	        	
  	       	
  	        	menus.add(menu);
  	        }
	        
    	} catch(Exception ex) {
    		System.out.println(
                    "Error read to file '"
                    + archivoMenu + "'");
    	}  
    	return menus;
    	
    }
    
    public void menuSave(Menu menu, Boolean append){
    	this.writeFile(menu.toString(),pathMenu+archivoMenu, append);
    	
    }
        
}