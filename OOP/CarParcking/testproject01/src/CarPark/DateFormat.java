/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;
import java.io.Serializable;
import java.util.Date;
/**
 *
 * @author ppbas
 */
public class DateFormat implements Serializable{
    public Date dateCheckIn;
    public Date dateCheckOut;
    private long hour, min, sec;
    private String timeToString;
    
    public DateFormat() {
        this.dateCheckIn = new Date();
    }

    public void setTimeToString(String timeToString) {
        this.timeToString = timeToString;
    }

    public String getTimeToString() {
        return timeToString;
    }
    
    public long calTime(Date timeInt) {
        Date timeEnd = new Date();
        return (timeEnd.getTime() - timeInt.getTime()) / 1000;
    }

    public String toTime(long sumTime) {
        
        hour = sumTime / (60 * 60);
        min = (sumTime / 60) % 60;
        sec = sumTime % 60;
        timeToString = String.format("%02d:%02d:%02d", hour, min, sec);
        return timeToString;
        //return 00:00:00 format    }
    }
    
    
}