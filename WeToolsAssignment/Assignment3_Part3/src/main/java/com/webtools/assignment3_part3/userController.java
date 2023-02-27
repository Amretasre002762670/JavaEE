/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.webtools.assignment3_part3;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author amretasrerengarajan
 */
public class userController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        Class.forName("com.mysql.jdbc.Driver");
//        Connection connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Users_Schema",
//                    "root", "amre1999");
        
        // Redirecting to the index.jsp page the first time
        if(request.getParameter("index") == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/JSP/index.jsp");
            rd.forward(request, response);
        }
        
        if(request.getParameter("index").equalsIgnoreCase("formSubmit")){
            String firstName = request.getParameter("firstname");
            String lastName = request.getParameter("lastname");
            String dob = request.getParameter("dob");
            String designation = request.getParameter("designation");
            
//            request.setAttribute("firstname", firstName);
//            request.setAttribute("lastname", lastName);
//            request.setAttribute("dob", dob);
//            request.setAttribute("designation", designation);
            
            User userDetails = new User();
            
            userDetails.setFirstName(firstName);
            userDetails.setLastName(lastName);
            userDetails.setDesignation(designation);
            userDetails.setDateOfBirth(dob);
            
            request.setAttribute("UserDetails", userDetails);
            
            RequestDispatcher rd = request.getRequestDispatcher("/JSP/view.jsp");
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
