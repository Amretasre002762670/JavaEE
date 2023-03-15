/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/SpringFramework/AbstractController.java to edit this template
 */
package com.webtools.assignment4_part5.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author amretasrerengarajan
 */
public class MainController extends AbstractController {
    
    public MainController() {
    }
    
    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        ModelAndView mv =  null;
        if (request.getParameter("count") == null) {
            mv = new ModelAndView("index");
        } else {
            String count = request.getParameter("count");
            request.setAttribute("count", count);
            mv = new ModelAndView("addbooksform");
        }
        
        return mv;
    }
    
}
