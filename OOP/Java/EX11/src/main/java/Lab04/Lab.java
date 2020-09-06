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
public class Lab extends Assignment{
    String specification;

    public Lab() {
    }

    public Lab(String name, int month, int day, int hour, int minute,String specification) {
        super(name, month, day, hour, minute);
        this.specification = specification;
    }
//    public String toString(){
//        String s="";
//        s+="Unit Testing (date : "+day+"-"+month+" at "+hour+":"+minute+"): "+"score = "+score+"; totalPoints = "+totalPoints+"; totalWeight = "+totalWeight+"; specification = "+specification+"\n";
//        return s;
//    }
    
    @Override
    public String toString() {
        return name+" (date : "+String.format("%02d", day)+"-"+month+" at "+hour+":"+String.format("%02d", minute)+"): "+"score = "+score+"; totalPoints = "+totalPoints+"; totalWeight = "+String.format("%.2f", totalWeight)+"; specification = "+specification;
    }
    
}
