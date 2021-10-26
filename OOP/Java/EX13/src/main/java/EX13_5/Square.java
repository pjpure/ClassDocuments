/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EX13_5;

/**
 *
 * @author PURE
 */
public class Square extends Geometric implements Colorable{
    double side;

    public Square() {
    }

    public Square(double side) {
        this.side = side;
    }
    
    @Override
    public void howToColor() {
        System.out.print("Color all four sides  ");
    }

    @Override
    double getArea() {
        return side*side;
    }

    @Override
    double getParimeter() {
        return 4*side;
    }
    
}
