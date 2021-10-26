
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
public class Circle extends Geometric{
    private double radius;

    public Circle() {
    }

    public Circle(double radius) {
        this.radius = radius;
    }

    public Circle(double radius, String color, boolean isFill, Date dateCreate) {
        super(color, isFill, dateCreate);
        this.radius = radius;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public String printCircle(){
        String s = "";
        s += getClass() +" "+ "Radius = " + getRadius() + " " + super.toString();
        return s;
    }
    
}
