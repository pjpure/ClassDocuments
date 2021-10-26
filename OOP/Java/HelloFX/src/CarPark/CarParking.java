/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

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

    public String checkIn1(Car c1) {
        if (Car.carCount < isParked.length) {
            for (int i = 0; i < isParked.length; i++) {
                if (isParked[i] == 0) {
                    c1.carPlace = i;
                    arr1.add(c1);
                    isParked[i] = 1;
                    Car.carCount++;
                    /////test/////
                    System.out.println("Parking Complete, Parking Area Is " + carPlaceName[i]);
                    return carPlaceName[i];
                }
            }

        } else {
            System.out.println("Park Area Is Full");

        }
        return "";
    }

    public void checkIn2(Car c1, int areaP) {

        if (isParked[areaP] == 0) {
            c1.carPlace = areaP;
            arr1.add(c1);
            isParked[areaP] = 1;
            Car.carCount++;

        }

    }

    public int checkArrIndex(String carParkArea) {
        for (int i = 0; i < isParked.length; i++) {
            if (carParkArea.equals(carPlaceName[i])) {
                
                if (isParked[i] == 1) {
                    System.out.println("Found!!");
                    return i;

                } else {
                    System.out.println("There's no Car in Parking Area");
                    return -1;
                }

            }
        }
        System.out.println("TestBug2");
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

    public void checkOut(String Place) throws FileNotFoundException, IOException {
        int index = checkArrIndex(Place);
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
     public void checkOut2(int index) throws FileNotFoundException, IOException {       
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

//        for (int i = 0; i < 3; i++) {
//            t1.checkIn1(new Car("TEST-00" + i));
//        }
//        for (int i = 0; i < 2; i++) {
//            t1.checkOut(t1.carPlaceName[i]);
//        }
//        for (int i = 9; i > 7; i--) {
//            t1.checkIn1(new Car("TEST-00" + i));
//        }
        
        System.out.println(t1);
        System.out.println(Car.carCount);
        FileIO.writeData(t1);
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
