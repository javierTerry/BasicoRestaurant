package com.restaurant.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.restaurant.dao.AdminDao;
import com.restaurant.model.Admin;
import com.restaurant.model.Reservacion;

import java.text.ParseException;

public class AdminController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String HOME = "/public/home.jsp";
    private static String LIST_USER = "/listAdmin.jsp";
    private AdminDao dao;

    public AdminController() {
        super();
        dao = new AdminDao();
    }

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
        } else if (action.equalsIgnoreCase("adminMenu")){
        	
        } else {
            forward = HOME;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        
        System.out.println(reservacion.toString());
        dao.reservacionSave(reservacion);
        RequestDispatcher view = request.getRequestDispatcher(HOME);
        //request.setAttribute("users", dao.getAllAdmins());
        view.forward(request, response);
    }
}