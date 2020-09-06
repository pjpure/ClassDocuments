
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
public class CESmartPackage {

    public static void main(String[] args) {
        Scanner input1 = new Scanner(System.in);
        double totalPrice = 0;
        int state = 0;
        int mainSelect = 0;
        AirTicket a1 = new AirTicket();
        a1.setPriceFirstClass(99999);
        a1.setPriceBusinessClass(9999);
        a1.setPriceEconomyClass(999);

        Hotel h1 = new Hotel();
        h1.setPriceTriStar(2000);
        h1.setPriceFourStar(5000);
        h1.setPriceFiveStar(10000);

        Meal m1 = new Meal();
        m1.setPriceStreetFood(500);
        m1.setPriceHotelMeal(1500);
        m1.setPriceRestaurant(4000);

        SightseeingTour s1 = new SightseeingTour();
        s1.setPriceTour0(0);
        s1.setPriceTour1(1500);
        s1.setPriceTour2(3000);

        System.out.println(a1);
        System.out.println(h1);
        System.out.println(m1);
        System.out.println(s1);

        while (state==0) {
            if (mainSelect == 0) {
                System.out.println("Main Menu");
                System.out.println("1: AirTicket");
                System.out.println("2: Hotel");
                System.out.println("3: Meal");
                System.out.println("4: SighseeingTour");
                System.out.println("5: Confirm");
                System.out.print("Enter a choice:");
                mainSelect = input1.nextInt();
            }
            if (mainSelect == 1) {
                a1.selectAirTicket();
                if (a1.getSelect() == 1) {
                    totalPrice += a1.getPriceFirstClass();
                    mainSelect = 0;
                }
                if (a1.getSelect() == 2) {
                    totalPrice += a1.getPriceBusiness();
                    mainSelect = 0;
                }
                if (a1.getSelect() == 3) {
                    totalPrice += a1.getPriceEconomy();
                    mainSelect = 0;
                }
            }
            if (mainSelect == 2) {
               h1.selectHotel();
               if (h1.getSelect() == 1) {
                    totalPrice += h1.getPriceTriStar();
                    mainSelect = 0;
                }
                if (h1.getSelect() == 2) {
                    totalPrice += h1.getPriceFourStar();
                    mainSelect = 0;
                }
                if (h1.getSelect() == 3) {
                    totalPrice += h1.getPriceFiveStar();
                    mainSelect = 0;
                }
            }
            if (mainSelect == 3) {
                   m1.selectMeal();
                   if (m1.getSelect() == 1) {
                    totalPrice += m1.getPriceStreetFood();
                    mainSelect = 0;
                }
                if (m1.getSelect() == 2) {
                    totalPrice += m1.getPriceHotelMeal();
                    mainSelect = 0;
                }
                if (m1.getSelect() == 3) {
                    totalPrice += m1.getPriceRestaurant();
                    mainSelect = 0;
                }
            }
            if (mainSelect == 4) {
                s1.selectTour();
                   if (m1.getSelect() == 1) {
                    totalPrice += s1.getPriceTour1();
                    mainSelect = 0;
                }
                if (m1.getSelect() == 2) {
                    totalPrice += s1.getPriceTour2();
                    mainSelect = 0;
                }
                if (m1.getSelect() == 3) {
                    totalPrice += s1.getPriceTour0();
                    mainSelect = 0;
                }
            }
            if(mainSelect==5){
                state=1;
                System.out.println("Total Price = "+totalPrice);
            }
        }
    }
}
