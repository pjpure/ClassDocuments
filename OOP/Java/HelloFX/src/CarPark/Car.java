/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.io.Serializable;

/**
 *
 * @author ppbas
 */
public class Car implements Serializable {

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
        return carNO+'\n'+CarParking.carPlaceName[carPlace]+'\n'+d1.getTimeToString() +'\n'+d1.dateCheckIn+'\n'+d1.dateCheckOut;
    }
    @Override
    public String toString() {
        return "Car{" + "carNO=" + carNO + ", dateParked=" + d1.dateCheckIn + ", carPlace=" + carPlace + '}';
    }

}

