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
public class TestRegularPolygon {
    public static void main(String[] args) {
        RegularPolygon r0 = new RegularPolygon();
        System.out.println(r0.getPerimeter());
        System.out.println(r0.getArea());
        
        RegularPolygon r1 = new RegularPolygon(6,4);
        System.out.println(r1.getPerimeter());
        System.out.println(r1.getArea());
        
        RegularPolygon r2 = new RegularPolygon(10,4,5.6,7.8);
        System.out.println(r2.getPerimeter());
        System.out.println(r2.getArea());
    }
}
