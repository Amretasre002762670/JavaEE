/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.webtools.assignment3_part6;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.Integer;

/**
 *
 * @author amretasrerengarajan
 */
public class AddMoviesController extends HttpServlet {

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
        
        if(request.getParameter("index") == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/JSP/addMovies.jsp");
            rd.forward(request, response);
        }
        
        if(request.getParameter("index").equalsIgnoreCase("formsubmit")) {
            
            Movies newMovie = new Movies();
            
            newMovie.setMovieTitle(request.getParameter("title"));
            newMovie.setMovieActor(request.getParameter("actor"));
            newMovie.setMovieActress(request.getParameter("actress"));
            newMovie.setMovieGenre(request.getParameter("genre"));
            newMovie.setReleaseYear(Integer.parseInt(request.getParameter("year")));
            
            request.setAttribute("Movie", newMovie);

//            String title = request.getParameter("title");
//            String actor = request.getParameter("actor");
//            String actress = request.getParameter("actress");
//            String genre = request.getParameter("genre");
//            int year = Integer.parseInt(request.getParameter("year"));
//            
//            request.setAttribute("title", title);
//            request.setAttribute("actor", actor);
//            request.setAttribute("actress", actress);
//            request.setAttribute("genre", genre);
//            request.setAttribute("year", year);
            
            RequestDispatcher rd = request.getRequestDispatcher("/JSP/success.jsp");
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
