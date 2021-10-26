package EX13_5;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.Date;

/**
 *
 * @author PURE
 */
public abstract class Geometric implements Comparable<Geometric>{
    String color;
    Date dateCreate;
    protected Geometric(){
        
    }

    protected Geometric(String color) {
        this.color = color;
    }
    
    @Override
    public int compareTo(Geometric o) {
        if(getArea()>o.getArea()) return 1;
        else if(getArea()<o.getArea()) return -1;
        else return 0;
    }
    
    abstract double getArea();
    abstract double getParimeter();
    
    static String max(Geometric a,Geometric b){
        switch (a.compareTo(b)) {
            case 1:
                return "Max = Area1";
            case -1:
                return "Max = Area2";
            default:
                return "Area1=Area2";
        }
    }
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

    @Override
    public int compareTo(Geometric o) {
        if(getArea()>o.getArea()) return 1;
        else if(getArea()<o.getArea()) return -1;
        else return 0;
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

    @Override
    public int compareTo(Geometric o) {
        if(getArea()>o.getArea()) return 1;
        else if(getArea()<o.getArea()) return -1;
        else return 0;
    }

    
}

