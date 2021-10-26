/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P1;

import java.util.Date;

/**
 *
 * @author PURE
 */
public abstract class Geometric {
    String color;
    Date dateCreate;
    protected Geometric(){
        
    }

    protected Geometric(String color) {
        this.color = color;
    }
    abstract double getArea();
    abstract double getParimeter();    
}
class Circle extends Geometric{
    double radius;

    public Circle() {
    }

    public Circle(double radius) {
        this.radius = radius;
    }

    public Circle(double radius, String color) {
        super(color);
        this.radius = radius;
    }
    
    @Override
    double getArea() {
        return Math.PI*radius*radius;
    }

    @Override
    double getParimeter() {
        return 2*Math.PI*radius;
    }
    
}
class Rectangle extends Geometric{
    double width,height;

    public Rectangle() {
    }

    public Rectangle(double width, double height) {
        this.width = width;
        this.height = height;
    }

    public Rectangle(double width, double height, String color) {
        super(color);
        this.width = width;
        this.height = height;
    }
    
    @Override
    double getArea() {
        return width*height;
    }

    @Override
    double getParimeter() {
        return 2*(width+height);
    }   
}
class Test{
    public static void main(String[] args) {
        Circle c1 = new Circle(2);       
        System.out.println(c1.getArea());
        System.out.println(c1.getParimeter());
        
        Rectangle r1 = new Rectangle(20,30);
        System.out.println(r1.getArea());
        System.out.println(r1.getParimeter());
        
    }
}
