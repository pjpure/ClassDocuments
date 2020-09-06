/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch11_2;

/**
 *
 * @author PURE
 */
public class Faculty extends Employee{
    public static void main(String[] args) {
        new Faculty();
    }
    Faculty(){
        super();
        System.out.println("4.Faculty contructer invoked");
    }
}
class Employee extends Person{
    Employee(){
        this("2.Employee contructer invoked");
        System.out.println("3.Employee no-arg contructer invoked");
    }
    Employee(String s){
        super();
        System.out.println(s);
    }
}
class Person {
    Person(){
        super();
        System.out.println("1.Person constructer invoked");
    }
    
}
