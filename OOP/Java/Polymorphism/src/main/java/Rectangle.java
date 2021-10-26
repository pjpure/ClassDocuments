
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
public class Rectangle extends Geometric{
    double width,height;

    public Rectangle() {
    }

    public Rectangle(double width, double height) {
        this.width = width;
        this.height = height;
    }

    public Rectangle(double width, double height, String color, Date dateCreate) {
        super(color, dateCreate);
        this.width = width;
        this.height = height;
    }
    public void display(double w,double h){
        System.out.println(w +" "+ h);
    }
}
