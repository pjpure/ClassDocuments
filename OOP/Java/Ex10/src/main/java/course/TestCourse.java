/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package course;

/**
 *
 * @author PURE
 */
public class TestCourse {
    public static void main(String[] args) {
        Course c1 = new Course("OOP");
        Student s1 = new Student("123","A");
        Student s2 = new Student("456","B");
        Student s3 = new Student("789","C");
        c1.addStudent(s1);
        c1.addStudent(s2);
        c1.addStudent(s3);
        System.out.println(c1);
        c1.dropStudent(s2);
        System.out.println(c1);
        c1.clearStudent();
        System.out.println(c1);
    }
}
