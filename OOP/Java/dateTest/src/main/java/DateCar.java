
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class DateCar {
    private Date dateCreate;
    private int carId;
    private int select=0;
    public DateCar() {
        this.dateCreate = new Date();
    }   

    public DateCar(int carId) {
        this.dateCreate = new Date();
        this.carId = carId;
    }

    public void setSelect(){
        Scanner input1 = new Scanner(System.in);
        select=input1.nextInt();
    }
    public void setcarId(){
        Scanner input2 = new Scanner(System.in);
        carId=input2.nextInt();
    }
    public int getSelect() {
        return select;
    }

    public int getSelectId() {
        return carId;
    }
    
    public Date getDate(){
        return dateCreate;
    }
    
    
   
}
