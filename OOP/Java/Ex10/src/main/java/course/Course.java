/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package course;

import java.util.ArrayList;

/**
 *
 * @author PURE
 */
public class Course {
    private String courseName;
    private int numberOfStudents;
    ArrayList<Student> classList = new ArrayList<>();

    public Course() {
    }

    public Course(String courseName) {
        this.courseName = courseName;
    }
    
    public void addStudent(Student student){
        classList.add(student);
        numberOfStudents++;
    }
    public void dropStudent(Student student){
        classList.remove(student);
    }
    public void clearStudent(){
        classList.clear();
    }

    @Override
    public String toString() {
        return "Course{" + "courseName=" + courseName + ", classList=" + classList + '}';
    }

    

    

    

  
}
