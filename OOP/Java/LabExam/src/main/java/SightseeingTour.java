
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class SightseeingTour {
    private double priceTour0;
    private double priceTour1;
    private double priceTour2;
    
    private int select=0;
    Scanner input = new Scanner(System.in);


    public int getSelect() {
        return select;
    }
    
    public void selectTour(){
            System.out.println("Tour");
            System.out.println("1: Tour1");
            System.out.println("2: Tour2");
            System.out.println("3: No");
            System.out.print("Enter a choice:");
            select = input.nextInt();
    }
    public SightseeingTour() {
    }

    public double getPriceTour0() {
        return priceTour0;
    }

    public void setPriceTour0(double priceTour0) {
        this.priceTour0 = priceTour0;
    }

    public double getPriceTour1() {
        return priceTour1;
    }

    public void setPriceTour1(double priceTour1) {
        this.priceTour1 = priceTour1;
    }

    public double getPriceTour2() {
        return priceTour2;
    }

    public void setPriceTour2(double priceTour2) {
        this.priceTour2 = priceTour2;
    }

    @Override
    public String toString() {
        return "\nSightseeingTour" + "\nTour1 = " + priceTour1 +" baht"+ ", \nTour2 = " + priceTour2 +" baht"+ "";
    }

    
    
}
