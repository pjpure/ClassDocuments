
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
public class TestCourse {
    public static void main(String[] args) {
        Student s1 = new Student("62010619","Pattapon");
        s1.setDob(LocalDateTime.of(2000,8,11,16,43));
        Course c1 = new Course("01076004","OOP");
        Course c2 = new Course("01076004","OOP2");
        Course c3 = new Course("01076004","OOP3");
        Course c4 = new Course("01076004","OOP4");
        Course c5 = new Course("01076004","OOP5");
        Course c6 = new Course("01076004","OOP6");
        s1.addCourse(c1);
        s1.addCourse(c2);
        s1.addCourse(c3);
        s1.addCourse(c4);
        s1.addCourse(c5);
        s1.addCourse(c6);
        s1.dropCourse(c2);
        s1.dropCourse(c3);
       
        System.out.println(s1.toString());
    }    
}
