/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_university.BackEnd;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author USER
 */
public class Database implements Serializable {

    private String p;
    private String file = "test.dat";
    private String mainParent = "";

    public Database() {
        Path path = Paths.get(System.getProperty("user.dir"));
        p = path.toString();
        p = p.replace("\\", "\\\\");
        mainParent = p;
        mainParent += "\\\\data\\\\database\\\\";
        p += "\\\\data\\\\database\\\\" + file;

    }

    public Database(String file) {
        Path path = Paths.get(System.getProperty("user.dir"));
        p = path.toString();
        p = p.replace("\\", "\\\\");
        mainParent = p;
        mainParent += "\\\\data\\\\database\\\\";
        p += "\\\\data\\\\database\\\\" + file + ".dat";
        this.file = file;
    }

    @SuppressWarnings("empty-statement")
    public boolean _init_() {
        int t = 0;
        this.setFile("Lists");
        ArrayList<String> starterDatabase = new ArrayList<>(){{
            add("Admins");
            add("Staffs");
            add("Students");
            add("Courses");
        }};
        t += (this.write(starterDatabase) ? 0 : 1);
        this.setPath_Admins();
        t += (this.write(null) ? 0 : 1);
        this.setPath_Staffs();
        t += (this.write(null) ? 0 : 1);
        this.setPath_Students();
        t += (this.write(null) ? 0 : 1);
        this.setPath_Courses();
        t += (this.write(null) ? 0 : 1);
        return t == 0;
    }

    public void _READ_() {
        this.setPath_Admins();
        this.read();
        this.setPath_Staffs();
        this.read();
        this.setPath_Students();
        this.read();
        this.setPath_Courses();
        this.read();
    }

    public void setPath(String path) {
        p = path;
    }

    public void setFile(String file) {
        Path path = Paths.get(p);
        p = path.getParent().toString() + "\\" + file + ".dat";
    }

    public void setPath_Admins() {
        Path path = Paths.get(p);
        p = path.getParent().toString() + "\\Admins.dat";
    }

    public void setPath_Students() {
        Path path = Paths.get(p);
        p = path.getParent().toString() + "\\Students.dat";
    }

    public void setPath_Staffs() {
        Path path = Paths.get(p);
        p = path.getParent().toString() + "\\Staffs.dat";
    }

    public void setPath_Courses() {
        Path path = Paths.get(p);
        p = path.getParent().toString() + "\\Courses.dat";
    }

    public <E> boolean write(E data) {
        ObjectOutputStream out;
        // write backup
        try {
            Path path = Paths.get(p);
            out = new ObjectOutputStream(new FileOutputStream(path.getParent().toString() + "\\" + "backup" + "\\" + file + Calendar.getInstance().getTimeInMillis() + ".dat"));
            E backup = (E) this.get();
            out.writeObject(backup);
        } catch (IOException ex) {
            System.out.println("Writing Backup File is Error with logs : " + ex.toString() + " Parameter's Class :" + data.getClass());
        }
        // write file
        try {
            out = new ObjectOutputStream(new FileOutputStream(p));
            out.writeObject(data);
            System.out.println("Writing Successful");
        } catch (IOException ex) {
            System.out.println("Writing File is Error with logs : " + ex.toString());
            return false;
        }

        try {
            out.close();
        } catch (IOException ex) {
            System.out.println(ex.toString());
        }
        return true;
    }

    public boolean read() {
        try {
            try ( ObjectInputStream in = new ObjectInputStream(new FileInputStream(p))) {
                System.out.println(in.readObject());
            }
            return true;
        } catch (IOException | ClassNotFoundException e) {
            System.out.println("Reading File is Error with logs : " + e.toString());
            return false;
        }
    }

    public boolean check() {
        try {
            ObjectInputStream in = new ObjectInputStream(new FileInputStream(p));
            in.close();
            return true;
        } catch (IOException e) {
            System.out.println("Reading File is Error with logs : " + e.toString());
            return false;
        }
    }

    public Object get() {
        Object data;
        try {
            try ( ObjectInputStream in = new ObjectInputStream(new FileInputStream(p))) {
                data = in.readObject();
            }
            return data;
        } catch (IOException | ClassNotFoundException e) {
            System.out.println("Getting data from File is Error with logs : " + e.toString());
            return null;
        }
    }

    public static ArrayList<Person> getPerson() {
        ArrayList<Person> arr = new ArrayList<>();
        Database db = new Database();
        db.setPath_Students();
        var t = db.get();
        if (t != null) {
            arr.addAll((ArrayList<Person>) t);
        }
        db.setPath_Admins();
        t = db.get();
        if (t != null) {
            arr.addAll((ArrayList<Person>) t);
        }
        db.setPath_Staffs();
        t = db.get();
        if (t != null) {
            arr.addAll((ArrayList<Person>) t);
        }
        return arr;
    }

    protected ArrayList<String> getDatabaseList(){
        Database db = new Database("Lists");
        return (ArrayList<String>) db.get();
    }
    
    protected <E> boolean newDatabase(String name, E data) {
        String path = this.mainParent;
        Database db = new Database();
        db.setPath(path + name + ".dat");
        if( !db.check() && db.write(data)){
            db.setFile("Lists");
            ArrayList<String> arr = (ArrayList<String>) db.get();
            arr.add(name);
            while(!db.write(arr)){
            }
        }else{
            if(db.check()) System.out.println("Database already Existed.");
            else System.out.println("Creating Database is Failured.");
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Database{" + "p=" + p + ", file=" + file + '}';
    }

}
