/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

/**
 *
 * @author PURE
 */
public class FeeCal {

    private  static int feePerHour = 50;
    private static int feePerDay = 500;

    public static int getFeePerHour() {
        return feePerHour;
    }

    public static void setFeePerHour(int feePerHour) {
        FeeCal.feePerHour = feePerHour;
    }

    public static int getFeePerDay() {
        return feePerDay;
    }

    public static void setFeePerDay(int feePerDay) {
        FeeCal.feePerDay = feePerDay;
    }
    


    public static double fee(long sumTime) {
        long hour, min, sec;
        long money = 0;
        hour = sumTime / (60 * 60);
        min = (sumTime / 60) % 60;
        sec = sumTime % 60;
        if (hour >= 0) {
            money = (hour - 1) * getFeePerHour();
            if ((min == 0 && sec > 0) || (min > 0)) {
                money += getFeePerHour();
            }
        }
        if (SettingFee.isFree()) {
            return money;
        } else {
            return money + getFeePerHour();
        }

    }

    public static double fee2(long sumTime) {
        if (SettingFee.isFine()) {
            return 0;
        } else {
            long hour;
            long money = 0;
            hour = sumTime / (60 * 60);
            if (hour >= 24) {
                money += (hour / 24) * getFeePerDay();
            }
            return money;
        }

    }

    public static double totalFee(double fee1, double fee2) {
        return fee1 + fee2;
    }

}
