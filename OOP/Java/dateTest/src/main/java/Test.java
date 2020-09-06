
import java.util.ArrayList;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class Test {
    public static void main(String[] args) {
        int i=0;
        long h,m,s;
        Date dateNow;
        ArrayList<Date> dateList = new ArrayList<>();
        DateCar[] d = new DateCar[10];
        d[0] = new DateCar();
        while (d[i].getSelect()!=10) {         
            System.out.println("Main Menu");
            System.out.println("1: Save Date");
            System.out.println("2: Show Date List");
            System.out.println("3: Diff Date");
            System.out.print("Enter a choice:");
            d[i].setSelect();
            if(d[i].getSelect()==1)  
            {
                dateList.add(d[i].getDate());
                i++;
                d[i] = new DateCar(i);               
            }
            if(d[i].getSelect()==2)  
            {
                System.out.println(dateList);
            }
            if(d[i].getSelect()==3)  
            {
                dateNow = new Date();
                System.out.println("Enter your Car Id:");
                d[i].setcarId();
                System.out.println("Date Car :"+dateList.get(d[i].getSelectId()));
                System.out.println("Date Now :"+dateNow);
                s=(dateNow.getTime()-dateList.get(d[i].getSelectId()).getTime())/1000;
                m=s/60;
                h=m/60;
                System.out.println("Hour :"+h+" Minute:"+m%60+" Sec:"+s%60);
            }
        }
    }
}
