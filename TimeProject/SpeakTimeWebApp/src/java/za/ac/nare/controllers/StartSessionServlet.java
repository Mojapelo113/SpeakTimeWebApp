
package za.ac.nare.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.nare.business.WatchFacadeLocal;


public class StartSessionServlet extends HttpServlet {
     
    @EJB WatchFacadeLocal wfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        HttpSession session = request.getSession(true);
        
        String name = request.getParameter("name");
        Long user_id = Long.parseLong(request.getParameter("user_id"));
        
        if (wfl.validateCode(user_id)) {
            initializeSession(session, name, user_id);
            request.getRequestDispatcher("normal_user_menu.jsp").forward(request, response); 
        }else{
        
            request.getRequestDispatcher("error_code.jsp").forward(request, response); 
        
        }
 
    }
    
    public void initializeSession(HttpSession session, String name,Long user_id){
    
        int numRecord = 0;
        
        session.setAttribute("name", name);
        session.setAttribute("user_id", user_id);
        session.setAttribute("numRecord", numRecord);
    }

}
