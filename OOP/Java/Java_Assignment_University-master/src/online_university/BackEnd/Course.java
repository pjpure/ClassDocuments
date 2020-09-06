/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_university.BackEnd;

import java.util.ArrayList;
import java.util.Arrays;
import javafx.util.Pair;

/**
 *
 * @author USER
 */
public class Course extends Person {

    public static void main(String[] args) {
        Course c = new Course();
        c.addStudent(new Student("s1", "123123"), new Student("s2", "123123"));
        c.getStudents().get(0).getValue().setScore("50.25");
        System.out.println(c.getStudents());
    }

    final String role = "Course";
    private ArrayList<Pair<Student, Grading>> students = new ArrayList<>();
    private String classDescription = "";
    private ArrayList<Staff> staffs = new ArrayList<Staff>();

    public Course() {
        super();
    }

    public Course(String username, String password) {
        super(username, password);
    }

    public Course(String name, String lname, String age, String stuId, String id, String password, String email) {
        super(name, lname, age, stuId, id, password, email);
    }

    public Course(String des) {
        this.classDescription = des;
    }

    public void addStaff(Staff... staff) {
        this.staffs.addAll(Arrays.asList(staff));
    }

    public void addStudent(Student... student) {
        ArrayList<Pair<Student, Grading>> arr = new ArrayList<>();
        for (Student st : student) {
            arr.add(new Pair<>(st, new Grading()));
        }
        this.students.addAll(arr);
    }

    public ArrayList<Pair<Student, Grading>> getStudents() {
        return students;
    }

    public String getClassDescription() {
        return classDescription;
    }

    public ArrayList<Staff> getTeachers() {
        return staffs;
    }

    public void setStudents(ArrayList<Pair<Student, Grading>> students) {
        this.students = students;
    }

    public void setClassDescription(String classDescription) {
        this.classDescription = classDescription;
    }

    public void setTeachers(ArrayList<Staff> staffs) {
        this.staffs = staffs;
    }

    public static Course getById(String id) {
        return (Course) Person.getById(id);
    }

    public static int getIndex(String id) {
        return Person.getIndex(id, new Student(), new Database("courses"));
    }

    public Grading getStudentGrading(Student st) {
        ArrayList<Student> arr = new ArrayList<>();
        for (Pair<Student, Grading> s : this.students) {
            if (s.getKey().getUsername().equals(st.getUsername())) {
                return s.getValue();
            }
        }
        return null;
    }

    public boolean isStudentExist(Student st) {
        ArrayList<Student> arr = new ArrayList<>();
        for (Pair<Student, Grading> s : this.students) {
            if (s.getKey().getUsername().equals(st.getUsername())) {
                return true;
            }
        }

        return false;
    }

    public Pair<Student, Grading> getStudent(Student st) {
        ArrayList<Student> arr = new ArrayList<>();
        for (Pair<Student, Grading> s : this.students) {
            if (s.getKey().getUsername().equals(st.getUsername())) {
                return s;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        String s = super.toString();
        return "Course" + s; //To change body of generated methods, choose Tools | Templates.
    }
}
