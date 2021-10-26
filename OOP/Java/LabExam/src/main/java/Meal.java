
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
public class Meal {
   private double priceStreetFood;
   private double priceHotelMeal;
   private double priceRestaurant;
   private int select=0;
    Scanner input = new Scanner(System.in);


    public int getSelect() {
        return select;
    }
    
    public void selectMeal(){
            System.out.println("Meal");
            System.out.println("1: StreetFood");
            System.out.println("2: HotelMeal");
            System.out.println("3: Restaurant");
            System.out.print("Enter a choice:");
            select = input.nextInt();
    }
    public Meal() {
    }

    public double getPriceStreetFood() {
        return priceStreetFood;
    }

    public void setPriceStreetFood(double priceStreetFood) {
        this.priceStreetFood = priceStreetFood;
    }

    public double getPriceHotelMeal() {
        return priceHotelMeal;
    }

    public void setPriceHotelMeal(double priceHotelMeal) {
        this.priceHotelMeal = priceHotelMeal;
    }

    public double getPriceRestaurant() {
        return priceRestaurant;
    }

    public void setPriceRestaurant(double priceRestaurant) {
        this.priceRestaurant = priceRestaurant;
    }

    @Override
    public String toString() {
        return "\nMeal" + "\nStreetFood = " + priceStreetFood + " baht"+" \nHotelMeal = " + priceHotelMeal + " baht"+" \nRestaurant = " + priceRestaurant + " baht"+"";
    }
   
   
}
