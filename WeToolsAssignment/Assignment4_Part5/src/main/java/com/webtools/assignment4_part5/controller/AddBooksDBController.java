/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/SpringFramework/AbstractController.java to edit this template
 */
package com.webtools.assignment4_part5.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author amretasrerengarajan
 */
public class AddBooksDBController extends AbstractController {
    
    public AddBooksDBController() {
    }
    
    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        ModelAndView mv = null;
        
        String dbDriver = "com.mysql.jdbc.Driver";
            String dbURL = "jdbc:mysql:// localhost:3306/";
            // Database name to access
            String dbName = "Books_DB";
            String dbUsername = "root";
            String dbPassword = "amre1999";

            

            try {

                Class.forName(dbDriver);
                Connection con = DriverManager.getConnection(dbURL + dbName,
                        dbUsername,
                        dbPassword);

                PreparedStatement st = con
                        .prepareStatement("insert into books_info values(?, ?, ?, ?)");

                st.setString(1, (request.getParameter("isbn")));

                st.setString(2, request.getParameter("title"));

                st.setString(3, request.getParameter("author"));

                st.setFloat(4, Float.parseFloat(request.getParameter("price")));

                st.executeUpdate();

                st.close();
                con.close();

                mv = new ModelAndView("success");

            } catch (Exception e) {
                e.printStackTrace();
            }
            return mv;
    }
    
}
