/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P2;

/**
 *
 * @author PURE
 */
public class Circle {
    private double radius;
    private  String color;
    private boolean isFilled;
    private static int numberOfObject;
    
    public void setRadius(double newRadius){
        radius=newRadius;
    }
    public double getRadius(){
        return radius;
    }
}
