/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.io.FileNotFoundException;
import java.io.IOException;
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

    public int checkArrayCarNo(String carNo) {
        System.out.println("checkCarNo");
        for (int i = 0; i < arr1.size(); i++) {
            System.out.println(i);
            if (carNo.equals(arr1.get(i).carNO)) {
                System.out.println("arrayNo : " + i);
                return arr1.get(i).carPlace;
            }
        }
        return -1;
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

    public String checkIn2(Car c1, int areaP) {

        if (isParked[areaP] == 0) {
            c1.carPlace = areaP;
            arr1.add(c1);
            isParked[areaP] = 1;
            Car.carCount++;
            return carPlaceName[areaP];

        }
        return "";
    }

    public int checkArrPlace(String carParkArea) {
        for (int i = 0; i < isParked.length; i++) {
            if (carParkArea.equals(carPlaceName[i])) {
                if (isParked[i] == 1) {
                    System.out.println("Found!!");
                    return i;

                } 

            }
        }
        System.out.println("TestBug2");
        return -1;
    }

    public void switchpos(Car c1, Car c2) {
        int temp = c1.carPlace;
        c1.carPlace = c2.carPlace;
        c2.carPlace = temp;

    }

    public void switchpos(Car c1, int c2) {
        isParked[c1.carPlace] = 0;
        isParked[c2] = 1;
        c1.carPlace = c2;

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
        System.out.println("length :" + Place.length());
        int index;
        if (Place.length() <= 2) {
             index = checkArrPlace(Place);
        } else {
            index = checkArrayCarNo(Place);
        }
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
