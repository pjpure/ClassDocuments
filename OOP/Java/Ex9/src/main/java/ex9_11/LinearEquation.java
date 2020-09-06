/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ex9_11;

import java.util.Scanner;

/**
 *
 * @author PURE
 */
public class LinearEquation {
    private double a,b,c,d,e,f;

    public LinearEquation() {
    }
    public void setAll()
    {
        Scanner input = new Scanner(System.in);
        a=input.nextDouble();
        b=input.nextDouble();
        c=input.nextDouble();
        d=input.nextDouble();
        e=input.nextDouble();
        f=input.nextDouble();
    }
    
    public double getA() {
        return a;
    }

    public double getB() {
        return b;
    }

    public double getC() {
        return c;
    }

    public double getD() {
        return d;
    }

    public double getE() {
        return e;
    }

    public double getF() {
        return f;
    }
    public boolean isSolvable()
    {
        if((a*d)-(b*c)==0)
        {
            return false;
        }else
        {
            return true;
        }
    }
    public double getX()
    {
        return ((e*d)-(b*f))/((a*d)-(b*c));
    }
    public double getY()
    {
        return ((a*f)-(e*c))/((a*d)-(b*c));
    }
}
