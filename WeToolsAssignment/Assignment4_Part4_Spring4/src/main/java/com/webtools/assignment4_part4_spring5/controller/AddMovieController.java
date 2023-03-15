/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/SpringFramework/AbstractController.java to edit this template
 */
package com.webtools.assignment4_part4_spring5.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author amretasrerengarajan
 */
public class AddMovieController extends AbstractController {
    
    public AddMovieController() {
    }
    
    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        String title = request.getParameter("title");
        String actor = request.getParameter("actor");
        String actress = request.getParameter("actress");
        String genre = request.getParameter("genre");
        int relYear = Integer.parseInt(request.getParameter("year"));
        
        String dbDriver = "com.mysql.jdbc.Driver";
            String dbURL = "jdbc:mysql://localhost:3306/";
            // Database name to access
            String dbName = "Movies_DB";
            String dbUsername = "root";
            String dbPassword = "amre1999";


            try {

                Class.forName(dbDriver);
                Connection con = DriverManager.getConnection(dbURL + dbName,
                        dbUsername,
                        dbPassword);

                PreparedStatement st = con
                        .prepareStatement("insert into movies_info values(?, ?, ?, ?, ?)");

                st.setString(1, (title));

                st.setString(2, actor);

                st.setString(3, actress);

                st.setString(4, genre);
                
                st.setInt(5, (relYear));

                st.executeUpdate();

                st.close();
                con.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
        return new ModelAndView("success");
    }
    
}
