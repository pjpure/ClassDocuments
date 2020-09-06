/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class TstCircle {
    public static void main(String[] args) {
        String allColor[]={"Red","Black","Blue","Yellow","Pink"};
        Circle c1 = new Circle();
        Circle[] arrayCircle = new Circle[10];
        for (int i = 0; i < arrayCircle.length; i++) {
            arrayCircle[i] = new Circle();
            arrayCircle[i].setRadius(Math.random()*100); 
            arrayCircle[i].setColor(allColor[i%5]);
        }
        for (int i = 0; i < arrayCircle.length; i++) {
            System.out.println(arrayCircle[i].toString());
        }
        double total = 0.0;
       
        for (int i = 0; i < arrayCircle.length; i++) {
            total+=arrayCircle[i].getArea();
        }
        System.out.println("Total Area = "+total);
    }
    
}
