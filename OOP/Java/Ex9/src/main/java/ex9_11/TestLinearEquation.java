/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ex9_11;

/**
 *
 * @author PURE
 */
public class TestLinearEquation {
    public static void main(String[] args) {
        LinearEquation l1 = new LinearEquation();
        l1.setAll();
        if(l1.isSolvable()==true)
        {
            System.out.println("X="+l1.getX());
            System.out.println("Y="+l1.getY());
        }
        else
        {
            System.out.println("The equation has no solution");
        }
    }
}
