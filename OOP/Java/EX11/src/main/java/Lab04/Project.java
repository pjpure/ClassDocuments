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
public class Project extends Assignment{
    String specification;
    String dataFile;

    public Project() {
    }

    public Project(String name, int month, int day, int hour, int minute,String specification, String dataFile) {
        super(name, month, day, hour, minute);
        this.specification = specification;
        this.dataFile = dataFile;
    }
//    public String toString(){
//        String s="";
//        s+="Unit Testing (date : "+day+"-"+month+" at "+hour+":"+minute+"): "+"score = "+score+"; totalPoints = "+totalPoints+"; totalWeight = "+totalWeight+"; specification = "+specification+"; data file = "+dataFile+"\n";
//        return s;
//    }
    @Override
    public String toString() {
        return name+" (date : "+String.format("%02d", day)+"-"+month+" at "+hour+":"+String.format("%02d", minute)+"): "+"score = "+score+"; totalPoints = "+totalPoints+"; totalWeight = "+String.format("%.2f", totalWeight)+"; specification = "+specification+"; data file = "+dataFile+"\n";
    }
}
