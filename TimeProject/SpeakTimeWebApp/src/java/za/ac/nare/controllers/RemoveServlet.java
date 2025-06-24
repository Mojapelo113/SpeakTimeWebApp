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
import za.ac.nare.entity.Watch;

/**
 *
 * @author Nare
 */
public class RemoveServlet extends HttpServlet {
    @EJB WatchFacadeLocal wfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    Long userId = Long.parseLong(request.getParameter("id"));;
    Long id = userId;
    List<Watch> watches = wfl.getWatches(userId);
    
        for (int i = 0; i < watches.size(); i++) {
            wfl.remove(watches.get(i));
        }
    
        request.setAttribute("id", id);

    RequestDispatcher rd = request.getRequestDispatcher("remove_outcome.jsp");
    rd.forward(request, response);
    }
    
}
