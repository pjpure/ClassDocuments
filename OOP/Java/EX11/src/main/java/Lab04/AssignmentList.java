/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab04;

import java.util.ArrayList;

/**
 *
 * @author PURE
 */
public class AssignmentList {
    ArrayList<Assignment> itemList = new ArrayList<>();

    public AssignmentList() {
    }
    
    public void addItem(Assignment item){
        itemList.add(item);
    }
    public double computeCourseGrade(){
        double grade=0;
        double weight=0;
        for (int i = 0; i < itemList.size(); i++) {
            weight+=itemList.get(i).getTotalWeight();
        }
        for (int i = 0; i < itemList.size(); i++) {
            grade+=itemList.get(i).getTotalWeight()*itemList.get(i).getScore()/itemList.get(i).getTotalPoints();
        }
        if(itemList.size()>0){
            return grade/weight;
        }else{
            return 0;
        }
        
    }
    @Override
    public String toString(){
        String s="";
        for (Assignment a : itemList) {
            s+=a+"\n";
        }
        return s;
    }
    
}
