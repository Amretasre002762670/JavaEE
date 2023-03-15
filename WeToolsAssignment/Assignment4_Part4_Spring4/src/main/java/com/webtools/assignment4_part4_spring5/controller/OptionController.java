/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/SpringFramework/AbstractController.java to edit this template
 */
package com.webtools.assignment4_part4_spring5.controller;

import com.webtools.assignment4_part4_spring5.pojo.Movie;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author amretasrerengarajan
 */
public class OptionController extends AbstractController {
    
    public OptionController() {
    }
    
    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        ModelAndView mv = null;
//        Movie movie = new Movie();
        if (request.getParameter("options") == null) {
            mv = new ModelAndView("option");
        } else if (request.getParameter("options").equals("browse")) {
            mv = new ModelAndView("BrowseMovies");
        } else if (request.getParameter("options").equals("add")) {
            mv = new ModelAndView("AddMovies");
        } 
        return mv;
        
    }
    
}
