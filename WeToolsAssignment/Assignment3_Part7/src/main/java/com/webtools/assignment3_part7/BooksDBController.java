/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.webtools.assignment3_part7;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author amretasrerengarajan
 */
public class BooksDBController extends HttpServlet {

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
        if (request.getParameter("index") == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/JSP/BooksForm.jsp");
            rd.forward(request, response);
        }
        if (request.getParameter("index").equalsIgnoreCase("formsubmit")) {
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

                RequestDispatcher rd = request.getRequestDispatcher("/JSP/success.jsp");
                rd.forward(request, response);

            } catch (Exception e) {
                e.printStackTrace();
            }
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
