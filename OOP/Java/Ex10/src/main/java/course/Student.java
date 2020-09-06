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
public class Student {
    private String name;
    private String id;

    public Student() {
    }

    public Student(String id, String name) {
        this.name = name;
        this.id = id;
    }

    

    @Override
    public String toString() {
        return "Student{" + "name=" + name + ", id=" + id + '}';
    }   
    
}
