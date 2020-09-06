/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ex9_9;

/**
 *
 * @author PURE
 */
public class RegularPolygon {

    private int numberOfSides;
    private int length;
    private double xOrigin,yOrigin;

    public RegularPolygon() {
    }

    public RegularPolygon(int numberOfSide, int length) {
        this.numberOfSides = numberOfSide;
        this.length = length;
    }

    public RegularPolygon(int numberOfSide, int length, double xOrigin, double yOrigin) {
        this.numberOfSides = numberOfSide;
        this.length = length;
        this.xOrigin = xOrigin;
        this.yOrigin = yOrigin;
    }
  
    public double getPerimeter()
    {
        return numberOfSides*length;
    }
    public double getArea()
    {
        return (numberOfSides*length*length)/(4*Math.tan(Math.PI/numberOfSides));
    }
}
