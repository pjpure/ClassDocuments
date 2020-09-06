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
public class Test {
    public static void main(String[] args) {
        Circle c1 = new Circle(6);
        Circle c2 = new Circle(3);
        //System.out.println(c1.compareTo(c2));
        //System.out.println(Geometric.max(c1,c2));
        Rectangle r1 = new Rectangle(4,5);
        Rectangle r2 = new Rectangle(6,5);
        //System.out.println(r1.compareTo(r2));
        //System.out.println(Geometric.max(r1,r2));
        Square[] arys = new Square[10];
        for (int i = 0; i < arys.length; i++) {
            arys[i] = new Square(i+1);
            arys[i].howToColor();
            System.out.print("   Area = "+arys[i].getArea());
            System.out.println("   Parimeter = "+arys[i].getParimeter());
        }
        
        
    }
    
    
    
}
