package com.restaurant.dao;

import java.io.BufferedWriter;
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
import com.restaurant.model.Reservacion;
//import com.daniel.util.DbUtil;

public class AdminDao {

    private Connection connection;
    private String home = System.getProperty("user.home");
    private String archivoReservacion = "reservacion.txt";
    public AdminDao() {
        //connection = DbUtil.getConnection();
    }
    
    public void writeFile(String cadena) {
    	 try {
             // Assume default encoding.
             FileWriter fileWriter =
                 new FileWriter(home + "/"+archivoReservacion,true);

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

    public void addAdmin(Admin admin) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into admins(firstname,lastname,dob,email) values (?, ?, ?, ? )");
            // Parameters start with 1
            preparedStatement.setString(1, admin.getFirstName());
            preparedStatement.setString(2, admin.getLastName());
            preparedStatement.setDate(3, new java.sql.Date(admin.getDob().getTime()));
            preparedStatement.setString(4, admin.getEmail());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteAdmin(int adminId) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from admins where adminid=?");
            // Parameters start with 1
            preparedStatement.setInt(1, adminId);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateAdmin(Admin admin) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update admins set firstname=?, lastname=?, dob=?, email=?" +
                            "where adminid=?");
            // Parameters start with 1
            preparedStatement.setString(1, admin.getFirstName());
            preparedStatement.setString(2, admin.getLastName());
            preparedStatement.setDate(3, new java.sql.Date(admin.getDob().getTime()));
            preparedStatement.setString(4, admin.getEmail());
            preparedStatement.setInt(5, admin.getAdminid());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Admin> getAllAdmins() {
        List<Admin> admins = new ArrayList<Admin>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from admins");
            while (rs.next()) {
                Admin admin = new Admin();
                admin.setAdminid(rs.getInt("adminid"));
                admin.setFirstName(rs.getString("firstname"));
                admin.setLastName(rs.getString("lastname"));
                admin.setDob(rs.getDate("dob"));
                admin.setEmail(rs.getString("email"));
                admins.add(admin);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return admins;
    }

    public Admin getAdminById(int adminId) {
        Admin admin = new Admin();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from admins where adminid=?");
            preparedStatement.setInt(1, adminId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                admin.setAdminid(rs.getInt("adminid"));
                admin.setFirstName(rs.getString("firstname"));
                admin.setLastName(rs.getString("lastname"));
                admin.setDob(rs.getDate("dob"));
                admin.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return admin;
    }
    
    public void reservacionSave(Reservacion reservacion){
    	this.writeFile(reservacion.toString());
    	
    }
}