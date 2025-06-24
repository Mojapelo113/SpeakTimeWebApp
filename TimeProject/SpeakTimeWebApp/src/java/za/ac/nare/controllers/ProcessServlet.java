
package za.ac.nare.controllers;

import java.io.IOException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.nare.business.WatchFacadeLocal;
import za.ac.nare.entity.Watch;
import za.ac.tut.exception.InvalidTime;

/**
 *
 * @author Nare
 */
public class ProcessServlet extends HttpServlet {
 
    @EJB WatchFacadeLocal wfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        HttpSession session = request.getSession();
        
        Long user_id = (Long) session.getAttribute("user_id");
        String name = (String) session.getAttribute("name");

        Integer hours = Integer.parseInt(request.getParameter("hour"));
        Integer minute = Integer.parseInt(request.getParameter("minute"));
        Integer second = Integer.parseInt(request.getParameter("second"));
   
        
        if (!(wfl.validateTime(hours, minute, second))) {
                request.getRequestDispatcher("error_time.jsp").forward(request, response);
        }
        
        String stringTime = wfl.speakTime(hours, minute, second);
        
        int numRecord = (Integer) session.getAttribute("numRecord");
        numRecord++;
        Watch watch = createWatch(user_id, name, hours, minute, second, stringTime);
        wfl.create(watch);
        
        request.setAttribute("stringTime", stringTime);
        request.setAttribute("watch", watch);
        
        session.setAttribute("numRecord", numRecord);
        
        RequestDispatcher rd = request.getRequestDispatcher("time_outcome.jsp");
        rd.forward(request, response);
    }
    
    public Watch createWatch(Long user_id,String name,Integer hours,Integer minutes,Integer seconds,String stringTime){
    
        Watch w = new Watch();
        
        w.setUser_id(user_id);
        w.setName(name);
        w.setHours(hours);
        w.setMinutes(minutes);
        w.setSeconds(seconds);
        w.setStringTime(stringTime);
        w.setDate(new Date());
        
       return w;
    }

}
