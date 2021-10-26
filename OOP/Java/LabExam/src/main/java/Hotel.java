
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
public class Hotel {
    private double priceTriStar;
    private double priceFourStar;
    private double priceFiveStar;
    private int select=0;
    Scanner input = new Scanner(System.in);
    public Hotel() {
    }

    public int getSelect() {
        return select;
    }
    
    public void selectHotel(){
            System.out.println("Hotel");
            System.out.println("1: TriStar");
            System.out.println("2: FourStar");
            System.out.println("3: FiveStar");
            System.out.print("Enter a choice:");
            select = input.nextInt();
    }
    public double getPriceTriStar() {
        return priceTriStar;
    }

    public void setPriceTriStar(double priceTriStar) {
        this.priceTriStar = priceTriStar;
    }

    public double getPriceFourStar() {
        return priceFourStar;
    }

    public void setPriceFourStar(double priceFourStar) {
        this.priceFourStar = priceFourStar;
    }

    public double getPriceFiveStar() {
        return priceFiveStar;
    }

    public void setPriceFiveStar(double priceFiveStar) {
        this.priceFiveStar = priceFiveStar;
    }

    @Override
    public String toString() {
        return "\nHotel" + "\nTriStar = " + priceTriStar + " baht"+" \nFourStar = " + priceFourStar + " baht"+" \nFiveStar = " + priceFiveStar + " baht"+"";
    }
          
}
