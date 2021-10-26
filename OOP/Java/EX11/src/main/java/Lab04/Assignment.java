/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab04;

/**
 *
 * @author PURE
 */
public class Assignment {
    String name;
    int month;
    int day;
    int hour;
    int minute;
    double score;
    double totalPoints;
    double totalWeight;

    public Assignment() {
    }

    public Assignment(String name, int month, int day, int hour, int minute) {
        this.name = name;
        this.month = month;
        this.day = day;
        this.hour = hour;
        this.minute = minute;
    }

    public String getName() {
        return name;
    }

    public int getMonth() {
        return month;
    }

    public int getDay() {
        return day;
    }

    public int getHour() {
        return hour;
    }

    public int getMinute() {
        return minute;
    }

    public double getScore() {
        return score;
    }

    public double getTotalPoints() {
        return totalPoints;
    }

    public double getTotalWeight() {
        return totalWeight;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public void setTotalPoints(double totalPoints) {
        this.totalPoints = totalPoints;
    }

    public void setTotalWeight(double totalWeight) {
        this.totalWeight = totalWeight;
    }
    

    @Override
    public String toString() {
        return name+" (date : "+String.format("%02d", day)+"-"+month+" at "+hour+":"+String.format("%02d", minute)+"): "+"score = "+score+"; totalPoints = "+totalPoints+"; totalWeight = "+String.format("%.2f", totalWeight);
    }
}
