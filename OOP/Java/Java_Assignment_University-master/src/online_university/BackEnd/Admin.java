/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_university.BackEnd;

/**
 *
 * @author USER
 */
public class Admin extends Person {

    final String role = "Admin";

    public Admin() {
        super();
    }
    
    public Admin(String username, String password) {
        super(username, password);
    }

    public Admin(String name, String lname, String age, String stuId, String id, String password, String email) {
        super(name, lname, age, stuId, id, password, email);
    }

    public static Admin getById(String id) {
        return (Admin) Person.getById(id);
    }

    public static int getIndex(String id) {
        return Person.getIndex(id, new Admin(), new Database("admins"));
    }

    @Override
    public String toString() {
        String s = super.toString();
        return "Admin" + s; //To change body of generated methods, choose Tools | Templates.
    }
}
