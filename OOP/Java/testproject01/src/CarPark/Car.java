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

    public static String reFormStrCarNo(String input) {
        String[] out = {"", ""};
        int spaceCheck = 0;
        boolean firstLetter = true;
        
        for (int i = 0; i < input.length(); i++) {
            if ((input.charAt(i) >= 65 && input.charAt(i) <= 90)||(input.charAt(i)>=3585&&input.charAt(i)<=3631)) {

                out[spaceCheck] += input.charAt(i);
                firstLetter = false;
            } else if (input.charAt(i) >= 97 && input.charAt(i) <= 122) {
                out[spaceCheck] += (char)(input.charAt(i)-32);
            } else if (input.charAt(i) >= 48 && input.charAt(i) <= 57) {
                if(!firstLetter){
                spaceCheck = 1;
                }
                out[spaceCheck]+=input.charAt(i);
            } else if ((input.charAt(i) == 32 || input.charAt(i) == 45) && firstLetter) {
                spaceCheck = 1;
            }
        }
        System.out.println((String)out[0] + out[1]);
        return out[0] + " " + out[1];

//        input = input.replaceAll("[\\W]", "");
//        return input;
    }

    public String toLog() {
        d1.setTimeToString(d1.toTime(d1.calTime(d1.dateCheckIn)));
        double price = FeeCal.totalFee(FeeCal.fee(d1.calTime(d1.dateCheckIn)), FeeCal.fee2(d1.calTime(d1.dateCheckIn)));
        return carNO + '\n' + CarParking.carPlaceName[carPlace] + '\n' + d1.getTimeToString() + '\n' + d1.dateCheckIn + '\n' + d1.dateCheckOut+'\n'+price;
    }

    @Override
    public String toString() {
        return "Car{" + "carNO=" + carNO + ", dateParked=" + d1.dateCheckIn + ", carPlace=" + carPlace + '}';
    }

}
