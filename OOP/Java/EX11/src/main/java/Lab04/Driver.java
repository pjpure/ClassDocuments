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
public class Driver {
    public static void main(String[] args) {
        AssignmentList as = new AssignmentList();
        Assignment a1 = new Assignment("Unit Testing",12,1,23,0);
        a1.setScore(0.78);
        a1.setTotalPoints(0.99);
        a1.setTotalWeight(0.30);
        
        Assignment l1 = new Lab("Unit Testing",12,1,23,0,"Unittesting.pdf");
        l1.setScore(0.78);
        l1.setTotalPoints(0.99);
        l1.setTotalWeight(0.30);
        
        Assignment p1 = new Project("Unit Testing",12,1,23,0,"Unittesting.pdf","Snacks.csv");
        p1.setScore(0.78);
        p1.setTotalPoints(0.99);
        p1.setTotalWeight(0.30);
        
        as.addItem(a1);
        as.addItem(l1);
        as.addItem(p1);
        
        System.out.println("Grade = "+as.computeCourseGrade());
        System.out.println(as);
    }
    
    
}
