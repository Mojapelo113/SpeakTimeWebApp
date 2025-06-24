/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.nare.business;

import java.util.List;
import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.nare.entity.Watch;

/**
 *
 * @author Nare
 */
@Stateless
public class WatchFacade extends AbstractFacade<Watch> implements WatchFacadeLocal {

    @PersistenceContext(unitName = "SpeakTimeEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public WatchFacade() {
        super(Watch.class);
    }

    @RolesAllowed("client")
    @Override
    public String speakTime(int hour, int minute, int second) {
      
        String outcome = "";
        boolean flag = false;
        
        if(hour < 12) flag = true;
        
        if (hour ==  13) hour = 1;
        if (hour ==  14) hour = 2;
        if (hour ==  15) hour = 3;
        if (hour ==  16) hour = 4;
        if (hour ==  17) hour = 5;
        if (hour ==  18) hour = 6;
        if (hour ==  19) hour = 7;
        if (hour ==  20) hour = 8;
        if (hour ==  21) hour = 9;
        if (hour ==  22) hour = 10;
        if (hour ==  23) hour = 11;
        if (hour ==  00) hour = 12;
        
        if(minute >= 0 && minute <=30){
            if(flag){
              if(second == 0) outcome = minute+" minutes past "+hour+" [AM]";
              else outcome = minute+" minutes "+second+" seconds past "+hour+" [AM]";
            if (minute == 0) outcome = hour +" o'clock"+" [AM]";
            if (minute == 15) outcome = "quarter past "+hour+" [AM]";
            if (minute == 30) outcome = "half past "+hour+" [AM]";   
            }else{
            if(second == 0) outcome = minute+" minutes past "+hour+" [PM]";
              else outcome = minute+" minutes "+second+" seconds past "+hour+" [PM]";
            if (minute == 0) outcome = hour +" o'clock"+" [PM]";
            if (minute == 15) outcome = "quarter past "+hour+" [PM]";
            if (minute == 30) outcome = "half past "+hour+" [PM]";  
            }
          
        }else if(minute>30 && minute<60){
            if(flag){
              hour = hour+1;
            if(hour == 13) hour = 1; 
            if(second == 0) outcome = (60-minute)+" minutes to "+(hour)+" [AM]";
            else outcome = (60-minute-1)+" minutes "+(60-second)+" seconds to "+(hour)+" [AM]";            
           if (minute == 45) outcome = "quarter to "+(hour)+" [AM]";
            }else{
                hour = hour+1;
            if(hour == 13) hour = 1; 
          if(second == 0) outcome = (60-minute)+" minutes to "+(hour)+" [PM]";
            else outcome = (60-minute-1)+" minutes "+(60-second)+" seconds to "+(hour)+" [PM]";
          if (minute == 45) outcome = "quarter to "+(hour)+" [PM]";
            
            }
            
        }

        return outcome;
    }

    @RolesAllowed("manager")
    @Override
    public List<String> searchUserChecks(Long studno) {
      Query query = em.createQuery("SELECT w.stringTime FROM Watch w WHERE w.user_id = :value");
      query.setParameter("value", studno);
      
      List<String> w = query.getResultList();
      return w;
    }

    @RolesAllowed("manager")
    @Override
    public List<String> stringTimes() {
      Query query = em.createQuery("SELECT w.stringTime FROM Watch w");
      List<String> s = query.getResultList();
    
      return s;
    }

    @RolesAllowed("manager")
    @Override
    public List<Watch> getWatches(Long id) {
     
    Query query = em.createQuery("SELECT w FROM Watch w WHERE w.user_id = :value");
     query.setParameter("value", id);
     List<Watch> s = query.getResultList();
    
      return s;
    }

    @PermitAll
    @Override
    public boolean validateTime(int hr, int min, int sec) {
    if ((hr >= 0 && hr <= 23) && (min >= 0 && min <= 59) && (sec >= 0 && sec <= 59)) {
        return true;
    }
    return false;
}


    @PermitAll
    @Override
    public boolean validateCode(Long code) {
        if ((code+"").length() != 3) {
            return false;
        }
        
        return true;
    }
    
    
    
    
    
    
}
