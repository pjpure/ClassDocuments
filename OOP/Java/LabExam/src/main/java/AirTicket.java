
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
public class AirTicket {
    private double priceFirstClass;
    private double priceBusiness;
    private double priceEconomy;
    private int select=0;
    Scanner input = new Scanner(System.in);

    public AirTicket() {
    }

    public int getSelect() {
        return select;
    }
    
    public void selectAirTicket(){
            System.out.println("AirTicket");
            System.out.println("1: FirstClass");
            System.out.println("2: BusinessClass");
            System.out.println("3: EconomyClass");
            System.out.print("Enter a choice:");
            select = input.nextInt();
    }
    public void setPriceFirstClass(double priceFirstClass) {
        this.priceFirstClass = priceFirstClass;
    }

    public void setPriceBusinessClass(double priceBusiness) {
        this.priceBusiness = priceBusiness;
    }

    public void setPriceEconomyClass(double priceEconomy) {
        this.priceEconomy = priceEconomy;
    }

    public double getPriceFirstClass() {
        return priceFirstClass;
    }

    public double getPriceBusiness() {
        return priceBusiness;
    }

    public double getPriceEconomy() {
        return priceEconomy;
    }

    @Override
    public String toString() {
        return "\nAirTicket" + "\nFirstClass = " + priceFirstClass + " baht"+" \nBusinessClass = " + priceBusiness + " baht"+" \nEconomyClass = " + priceEconomy +" baht"+"";
    }
    
    
}
