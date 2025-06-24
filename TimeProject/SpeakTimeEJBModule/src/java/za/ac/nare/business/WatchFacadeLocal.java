/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.nare.business;

import java.util.List;
import javax.ejb.Local;
import za.ac.nare.entity.Watch;

@Local
public interface WatchFacadeLocal {

    void create(Watch watch);

    void edit(Watch watch);

    void remove(Watch watch);

    Watch find(Object id);

    List<Watch> findAll();

    List<Watch> findRange(int[] range);

    int count();
    
    String speakTime(int hour,int minute,int second);
    
    List<String> searchUserChecks(Long studno);
    
    List<String> stringTimes();
    
    List<Watch> getWatches(Long id);
    
    boolean validateTime(int hr,int min,int sec);

    boolean validateCode(Long code);
}
