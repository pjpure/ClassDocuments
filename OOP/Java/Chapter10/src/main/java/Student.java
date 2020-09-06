
import java.time.LocalDateTime;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class Student {
    String id;
    String name;
    LocalDateTime dob;
    Course[] course = new Course[7]; //3...7
    int count=0;
    Student(){
        
    }

    public Student(String id, String name) {
        for (int i = 0; i < course.length; i++) {
            course[i] = new Course();
        }
        this.id = id;
        this.name = name;
    }
    public void addCourse(Course newCourse){
        course[count]=newCourse;
        count++;
    }
    
    public void dropCourse(Course newCourse){
        for (int i = 0; i < count; i++) {
            if(course[i] == newCourse){
                    course[i] = course[count-1];
                }
        }
        count--;
    }
    
    public void setDob(LocalDateTime newDob) {
        dob = newDob;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public LocalDateTime getDob() {
        return dob;
    }
    
    public String displayCourse(){
        String s = " ";
        for (int i = 0; i < count; i++) {
            s += course[i];
            if(i<count-1){
                s += ",";
            }
            
        }
        return s;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name=" + name + ", dob=" + dob + ", course=" + displayCourse() + '}';
    }
    
    
}
