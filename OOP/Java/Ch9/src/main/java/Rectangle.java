/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class Rectangle {
    double width, height;
    String color;
    boolean isFilled;
    
    Rectangle(){     
    }
    Rectangle(double newWidth,double newHeight){ 
        width=newWidth;
        height=newHeight;
    }
    
    double getArea() {
        return width * height;
    }
}
