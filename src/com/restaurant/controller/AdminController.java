package com.restaurant.controller;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.restaurant.dao.AdminDao;
import com.restaurant.model.Admin;
import com.restaurant.model.Comanda;
import com.restaurant.model.ComandaContabilidad;
import com.restaurant.model.Menu;
import com.restaurant.model.Reservacion;

public class AdminController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String HOME = "/public/home.jsp";
    private static String LIST_USER = "/listAdmin.jsp";
    private AdminDao dao;

    public AdminController() {
        super();
        dao = new AdminDao();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");
        String modulo = request.getParameter("modulo");
        
        modulo = modulo == null ? "" : modulo; 

        if (action.equalsIgnoreCase("reservacionEliminar")){
        	List<Reservacion> reservaciones = dao.listaReservacion();
        	String uuid = request.getParameter("uuid");
        	Boolean append = false;
        	for(Reservacion reservacion : reservaciones){
        		
        		System.out.println(reservacion.getUuid());
        		if( !uuid.equalsIgnoreCase(reservacion.getUuid())){
        			System.out.println(uuid);
        			dao.reservacionSave(reservacion, append);
        		}
        		
        		
        		append = true;
        	}
            
            forward = HOME;
        } else if (action.equalsIgnoreCase("menuEliminar")){
            	List<Menu> menus = dao.listaMenu();
            	String uuid = request.getParameter("id");
            	Boolean append = false;
            	for(Menu menu : menus){
            		
            		if( !uuid.equalsIgnoreCase(menu.getId())){
            			dao.menuSave(menu, append);
            		}
            		
            		append = true;
            	}
                
                forward = HOME;
        } else if (action.equalsIgnoreCase("conta") && modulo.equalsIgnoreCase("ver") ){
        	String uuid = request.getParameter("uuid");
        		//Comanda comanda = dao.readComanda(uuid)
            	List<Comanda> comandas = dao.readComanda(uuid);
            	
            	request.setAttribute("comandas", comandas);
                forward = "/public/listComandas.jsp";
                
        } else if (action.equalsIgnoreCase("listReservacion")){
        	List<Reservacion> reservaciones = dao.listaReservacion();
       
        	forward = "/public/listReservacion.jsp";
            request.setAttribute("reservaciones", reservaciones);
        
        } else if (action.equalsIgnoreCase("conta") && !modulo.equalsIgnoreCase("ver")){
        	List<ComandaContabilidad> comandas = dao.contabilidad();
        	int total = 0;
        	for (ComandaContabilidad comanda : comandas){
        		total = total + comanda.getSubTotal();
        	}
        	forward = "/public/contabilidad.jsp";
            request.setAttribute("comandas", comandas);
            request.setAttribute("total", total);
        } else if (action.equalsIgnoreCase("adminMenu")){
        	List<Menu> menus = dao.listaMenu();
        	
        	forward = "/public/adminMenu.jsp";
            request.setAttribute("mensajeError", "no hay menu disponible");
            request.setAttribute("menus", menus);
        	
        } else {
            forward = HOME;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action = request.getParameter("action");
    	String ticket = request.getParameter("ticket");
    	
    	if (action.equalsIgnoreCase("comanda") ){
    		
    		for (int i = 1 ; i <6 ; i++){
    			System.out.println("ticket " + ticket + " - " + i);
    			AdminDao dao = new AdminDao();
    			Comanda comanda = new Comanda();
        		String sCantidad =  (request.getParameter("cantidad"+i).isEmpty()) ? "1" : request.getParameter("cantidad"+i) ;
        		String sPrecio =  (request.getParameter("precio"+i).isEmpty()) ? "1" : request.getParameter("precio"+i) ;
        		int cantidad = Integer.parseInt(sCantidad);
        		int precio = Integer.parseInt(sPrecio);
        		int subtotal = cantidad * precio;
        		comanda.setDescripcion(request.getParameter("descripcion"+i));																																																																																																																																																																																																																																																																																																							
        		comanda.setCantidad(cantidad);
        		comanda.setPrecio(precio);
        		comanda.setSubTotal(subtotal);
        		dao.comandaSave(comanda, ticket, true);
    		}
    		
    		
    	} else if  (action.equalsIgnoreCase("menuAgregar")) {
    		AdminDao dao = new AdminDao();
            Menu menu = new Menu();
            UUID uuid = UUID.randomUUID();
            
            menu.setDescripcion( request.getParameter("descripcion"));
            menu.setPrecio( Integer.parseInt(request.getParameter("precio")));
            menu.setFecha( request.getParameter("fechaCreacion"));
            menu.setId(uuid.toString());
            
            dao.menuSave(menu,true);
    	
    	} else {
    	
    		AdminDao dao = new AdminDao();
            Reservacion reservacion = new Reservacion();
            String noPersonas =  (request.getParameter("numPersonas").isEmpty()) ? "1" : request.getParameter("numPersonas") ;
            String telefono = (request.getParameter("telefono").isEmpty()) ? "1" : request.getParameter("telefono") ;
            
            
            reservacion.setNombre(request.getParameter("name"));
            reservacion.setEmail(request.getParameter("email"));
            reservacion.setFecha(request.getParameter("fecha"));
            reservacion.setHoraReservacion(request.getParameter("horario"));
            reservacion.setNoPersonas(Integer.parseInt(noPersonas));
            reservacion.setTelefono(Integer.parseInt(telefono));
            UUID uuid = UUID.randomUUID();
            reservacion.setUuid(uuid.toString());
            
            dao.reservacionSave(reservacion,true);
    	}
    	
        RequestDispatcher view = request.getRequestDispatcher(HOME);
        //request.setAttribute("users", dao.getAllAdmins());
        view.forward(request, response);
    }
}
