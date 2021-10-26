/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_university.BackEnd;

import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author USER
 */
public class Staff extends Person {

    final String role = "Staff";
    private ArrayList<Course> courses = new ArrayList<Course>();

    public Staff() {
        super();
    }

    public Staff(String username, String password) {
        super(username, password);
    }

    public Staff(String name, String lname, String age, String stuId, String id, String password, String email) {
        super(name, lname, age, stuId, id, password, email);
    }

   
    public void addCourses(Course... course) {
        this.courses.addAll(Arrays.asList(course));
    }

    public ArrayList<Course> getCourses() {
        return courses;
    }

    public void setCourses(ArrayList<Course> courses) {
        this.courses = courses;
    }

    public String getRole() {
        return role;
    }

    public static Staff getById(String id) {
        return (Staff) Person.getById(id);
    }

    public static int getIndex(String id) {
        return Person.getIndex(id, new Staff(), new Database("staffs"));
    }

    @Override
    public String toString() {
        String s = super.toString();
        return "Staff" + s; //To change body of generated methods, choose Tools | Templates.
    }
}
