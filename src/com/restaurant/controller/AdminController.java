package com.restaurant.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.restaurant.dao.AdminDao;
import com.restaurant.model.Admin;

import java.text.ParseException;

public class AdminController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/admin.jsp";
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
            forward = INSERT_OR_EDIT;
            int userId = Integer.parseInt(request.getParameter("userId"));
            Admin user = dao.getAdminById(userId);
            request.setAttribute("user", user);
        } else if (action.equalsIgnoreCase("listAdmin")){
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllAdmins());
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Admin user = new Admin();
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        try {
            Date dob = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("dob"));
            user.setDob(dob);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        user.setEmail(request.getParameter("email"));
        String userid = request.getParameter("userid");
        if(userid == null || userid.isEmpty())
        {
            dao.addAdmin(user);
        }
        else
        {
            user.setAdminid(Integer.parseInt(userid));
            dao.updateAdmin(user);
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
        request.setAttribute("users", dao.getAllAdmins());
        view.forward(request, response);
    }
}