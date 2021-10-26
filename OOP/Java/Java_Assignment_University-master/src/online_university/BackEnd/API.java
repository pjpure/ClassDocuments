/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_university.BackEnd;

import java.util.ArrayList;

/**
 *
 * @author USER
 */
public class API {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Authority.registor(new Staff("Glairly","g12345"));
        Authority.registor(new Staff("Gai","g12345"));
        System.out.println(Authority.login("Gai", "g12345"));
    }

    public static boolean _INIT_DATABASE_() {
        Database db = new Database();
        return db._init_();
    }
    
    public static boolean _NEW_DATABASE_(String fileName){
        Database db = new Database();
        return db.newDatabase(fileName, null);
    }

    public static ArrayList<ArrayList<Object>> _GET_DATABASE_() {
        Database db = new Database("Lists");
        ArrayList<ArrayList<Object>> arr = new ArrayList<>();
        ArrayList<String> list = (ArrayList<String>) db.get();
        for (String file : list) {
            db.setFile(file);
            arr.add((ArrayList<Object>) db.get());
        }
        return arr;
    }

    /**
     * Get all Account
     *
     * @return
     */
    public static ArrayList<Student> getAllStudent() {
        Person st = new Student();
        Database db = st.getDbPath();
        return (ArrayList<Student>) db.get();
    }

    public static ArrayList<Staff> getAllStaff() {
        Person st = new Staff();
        Database db = st.getDbPath();
        return (ArrayList<Staff>) db.get();
    }

    public static ArrayList<Admin> getAllAdmin() {
        Person st = new Admin();
        Database db = st.getDbPath();
        return (ArrayList<Admin>) db.get();
    }

    public static ArrayList<Course> getAllCourse() {
        Person st = new Course();
        Database db = st.getDbPath();
        return (ArrayList<Course>) db.get();
    }

    public static ArrayList<Object> getCustom(String file) {
        Database db = new Database(file);
        return (ArrayList<Object>) db.get();
    }

    /**
     * Return an Index from Object Database
     *
     * @param Person and it's Child
     * @param o
     * @return Index
     */
    public static <E extends Person> int searchByObject(E object) {
        Database db = object.getDbPath();
        return Person.search(object.getFirstName(), object.getUsername(), (ArrayList<Person>) db.get());
    }

    public static Person searchById(String id) {
        ArrayList<Person> arr = Database.getPerson();
        if (arr != null) {
            int res = Person.search("", id, arr);
            if (res != -1) {
                return arr.get(res);
            } else {
                return null;
            }
        } else {
            System.out.println("Get Data Falied.");
            return null;
        }
    }

    public static <E extends Person> boolean saveToDatabase(E... o) {
        return E.submit(o);
    }

    /**
     * Pass file name and your data
     * @param <E>
     * @param file
     * @param data
     * @return boolean
     */
    public static <E extends Person> boolean saveToCustom(String file, E... data) {
        Database db = new Database(file);
        ArrayList<Person> cs;
        for (Person c : data) {
            cs = (ArrayList<Person>) db.get();
            int isExist = Person.search(null, c.getUsername(), cs);
            if (isExist != -1) {
                cs.set(isExist, c);
            } else {
                if (cs == null) {
                    cs = new ArrayList<>();
                }
                cs.add(c);
            }
            if (!db.write(cs)) {
                System.out.println("Submit Falied.");
                return false;
            }
        }
        return true;
    }
}
