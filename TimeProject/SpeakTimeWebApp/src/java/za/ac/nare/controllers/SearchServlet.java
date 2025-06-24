/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.nare.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.nare.business.WatchFacadeLocal;
import za.ac.nare.entity.Watch;

/**
 *
 * @author Nare
 */
public class SearchServlet extends HttpServlet {

    @EJB WatchFacadeLocal wfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    Long userId = Long.parseLong(request.getParameter("id"));;
        
    List<String> times = wfl.searchUserChecks(userId);
        request.setAttribute("times", times);
        request.setAttribute("id", userId);
    RequestDispatcher rd = request.getRequestDispatcher("search_outcome.jsp");
    rd.forward(request, response);
    }
}
