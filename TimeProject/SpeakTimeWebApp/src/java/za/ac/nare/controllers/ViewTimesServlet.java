/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.nare.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.nare.business.WatchFacadeLocal;

/**
 *
 * @author Nare
 */
public class ViewTimesServlet extends HttpServlet {
    @EJB WatchFacadeLocal wfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    List<String> times = wfl.stringTimes();
     request.setAttribute("times", times);
    RequestDispatcher rd = request.getRequestDispatcher("view_times_outcome.jsp");
    rd.forward(request, response);
    }
}
