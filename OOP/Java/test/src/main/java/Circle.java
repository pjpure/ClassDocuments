/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class Circle {
    private double radius;
    private String color;
    static int numberOfObject = 0;
    static double sumArea;

    public Circle() {
        numberOfObject++;
    }

    public Circle(double radius, String color) {
        this.radius = radius;
        this.color = color;
        numberOfObject++;
    }
    
    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    public double getArea()
    {
        sumArea+=Math.PI*radius*radius;
        return Math.PI*radius*radius;
    }
    
    @Override
    public String toString() {
        return "Circle{" + "radius=" + radius + ", color=" + color + ", Area=" + getArea() +'}';
    }

   
    
    
}
