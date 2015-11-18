package com.restaurant.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.restaurant.dao.AdminDao;
import com.restaurant.model.Admin;
import com.restaurant.model.Comanda;
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

        if (action.equalsIgnoreCase("delete")){
            int userId = Integer.parseInt(request.getParameter("userId"));
            dao.deleteAdmin(userId);
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllAdmins());    
        } else if (action.equalsIgnoreCase("edit")){
            forward = HOME;
            int userId = Integer.parseInt(request.getParameter("userId"));
            Admin user = dao.getAdminById(userId);
            request.setAttribute("user", user);
        } else if (action.equalsIgnoreCase("listAdmin")){
            forward = "/public/home.jsp";
            request.setAttribute("users", dao.getAllAdmins());
        } else if (action.equalsIgnoreCase("listReservacion")){
        	List<Reservacion> reservaciones = dao.listaReservacion();
       
        	forward = "/public/listReservacion.jsp";
            request.setAttribute("reservaciones", reservaciones);
        } else if (action.equalsIgnoreCase("conta")){
        	List<Comanda> comandas = dao.contabilidad();
        	int total = 0;
        	for (Comanda comanda : comandas){
        		total = total + comanda.getSubTotal();
        	}
        	forward = "/public/contabilidad.jsp";
            request.setAttribute("comandas", comandas);
            request.setAttribute("total", total);
        } else if (action.equalsIgnoreCase("adminMenu")){
        	
        	forward = "/public/adminMenu.jsp";
            request.setAttribute("mensajeError", "no hay menu disponible");
        	
        } else {
            forward = HOME;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action = request.getParameter("action");
    	
    	if (action.equalsIgnoreCase("comanda") ){
    		
    		for (int i = 1 ; i <6 ; i++){
    			AdminDao dao = new AdminDao();
    			Comanda comanda = new Comanda();
        		String sCantidad =  (request.getParameter("cantidad"+i).isEmpty()) ? "1" : request.getParameter("cantidad"+i) ;
        		String sPrecio =  (request.getParameter("precio"+i).isEmpty()) ? "1" : request.getParameter("precio"+i) ;
        		int cantidad = Integer.parseInt(sCantidad);
        		int precio = Integer.parseInt(sPrecio);
        		int subtotal = cantidad * precio;
        		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+subtotal);
        		comanda.setDescripcion(request.getParameter("descripcion"+i));																																																																																																																																																																																																																																																																																																							
        		comanda.setCantidad(cantidad);
        		//comanda.setPrecio(precio);
        		//comanda.setSubTotal(subtotal);
        		System.out.println(request.getParameter("notaCosina"));
        		//comanda.setNotaCosina(request.getParameter("notaCosina"));
        		dao.comandaSave(comanda);
    		}
    		
    		
    	} else {
    		AdminDao dao = new AdminDao();
            Reservacion reservacion = new Reservacion();
            String noPersonas =  (request.getParameter("numPersonas").isEmpty()) ? "1" : request.getParameter("numPersonas") ;
            String telefono = (request.getParameter("telefono").isEmpty()) ? "1" : request.getParameter("telefono") ;
            
            
            reservacion.setNombre(request.getParameter("name"));
            reservacion.setEmail(request.getParameter("email"));
            reservacion.setFecha(request.getParameter("date"));
            reservacion.setHoraReservacion(request.getParameter("horario"));
            reservacion.setNoPersonas(Integer.parseInt(noPersonas));
           // reservacion.setTelefono(Integer.parseInt(telefono));
            
            dao.reservacionSave(reservacion);
    	}
    	
        RequestDispatcher view = request.getRequestDispatcher(HOME);
        //request.setAttribute("users", dao.getAllAdmins());
        view.forward(request, response);
    }
}
