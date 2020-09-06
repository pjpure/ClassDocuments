/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarParking;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author ppbas
 */
public class CarParking implements Serializable {

    ArrayList<Car> arr1 = new ArrayList<>();
    public static String[] carPlaceName = {"A1", "A2", "A3", "A4", "A5",
                                           "B1", "B2", "B3", "B4", "B5",
                                           "C1", "C2", "C3", "C4", "C5",
                                           "D1", "D2", "D3", "D4", "D5",
                                           "E1", "E2", "E3", "E4", "E5"};
    int[] isParked = new int[25];

    public CarParking() {
    }

    public void checkIn(Car c1) {
        if (Car.carCount < isParked.length) {
            for (int i = 0; i < isParked.length; i++) {
                if (isParked[i] == 0) {
                    c1.carPlace = i;
                    arr1.add(c1);
                    isParked[i] = 1;
                    Car.carCount++;
                    /////test/////
                    System.out.println("Parking Complete, Parking Area Is " + carPlaceName[i]);
                    break;
                }
            }

        } else {
            System.out.println("Park Area Is Full");

        }

    }

    public int checkOut(String carParkArea) {
        for (int i = 0; i < isParked.length; i++) {
            if (carParkArea == carPlaceName[i]) {
                if (isParked[i] == 1) {
                    System.out.println("Found!!");
                    return i;

                } else {
                    System.out.println("There's no Car in Parking Area");
                    return -1;
                }

            }
        }
        return -1;
    }

    public int searchCarIndex(int index) {
        if (index != -1) {
            for (int i = 0; i < isParked.length; i++) {
                if (index == arr1.get(i).carPlace) {
                    return i;
                }
            }
        }
        return -1;
    }

    public void calculateCharge(String Place) throws FileNotFoundException, IOException {
        int index = checkOut(Place);

        if (index != -1) {
            int arrIndex = searchCarIndex(index);
            arr1.get(arrIndex).d1.dateCheckOut = new Date();
            System.out.println(arr1.get(arrIndex).carNO);
            System.out.println("Listindex : " + arrIndex + " Arrayindex : " + index);
            isParked[index] = 0;
            Car.carCount--;
            
            try {
                FileIO.saveLog(arr1.get(arrIndex));
            } catch (FileNotFoundException fileNotFoundException) {
            }
            
            arr1.remove(arrIndex);
        } else {
            System.out.println("Wrong Input");
        }
    }

    public static void main(String[] args) throws IOException, FileNotFoundException, ClassNotFoundException {

        CarParking t1 = new CarParking();

        try {
            FileIO.readData(t1);
        } catch (IOException iOException) {
        } catch (ClassNotFoundException classNotFoundException) {
        }

        for (int i = 0; i < 4; i++) {
            t1.checkIn(new Car("TEST-00" + i));
        }
        for (int i = 3; i <= 4; i++) {
            t1.calculateCharge(t1.carPlaceName[i]);
        }
        
//        t1.calculateCharge("A3");
//        t1.checkIn(new Car("TEST-1001"));
//        t1.calculateCharge("A1");
//        t1.checkIn(new Car("TEST-2000"));
//        t1.checkIn(new Car("TEST-2001"));
//        t1.calculateCharge("ABC55");
//        t1.calculateCharge("B4");

        System.out.println(t1);
        System.out.println(Car.carCount);
        FileIO.writeData(t1);
        try {
            FileIO.readLog();
        } catch (FileNotFoundException fileNotFoundException) {
        }
    }

    @Override
    public String toString() {
        String isParkReturnString = "";
        for (int i = 0; i < isParked.length; i++) {
            isParkReturnString += String.valueOf(isParked[i]);
            if (i < isParked.length - 1) {
                isParkReturnString += ",";
            }
        }
        return "testvector{" + "arr1=" + arr1 + ", isParked= [" + isParkReturnString + "]}";
    }

}

class Car implements Serializable {

    static int carCount;
    String carNO;
    DateFormat d1 = new DateFormat();
    int carPlace;

    public Car() {
    }

    public Car(String carNO) {
        this.carNO = carNO;
    }
    public String toLog(){
        d1.setTimeToString(d1.toTime(d1.calTime(d1.dateCheckIn)));
        return carNO+" "+d1.getTimeToString() + " "+CarParking.carPlaceName[carPlace]+" "+d1.dateCheckIn+" "+d1.dateCheckOut;
    }
    @Override
    public String toString() {
        return "Car{" + "carNO=" + carNO + ", dateParked=" + d1.dateCheckIn + ", carPlace=" + carPlace + '}';
    }

}
