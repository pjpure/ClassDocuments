
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class ObjectInOutputStream {
    public static void main(String[] args) throws FileNotFoundException, IOException, ClassNotFoundException {
        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream("binary4.dat"));
        out.writeUTF("lnw");
        out.writeChar('M');
        out.writeObject(new Date());
        Circle c1 = new Circle(2.5);
        System.out.println("AreaC1:"+c1.getArea());
        System.out.println(Circle.numberOfObject);
        out.writeObject(c1);
        out.close();
        System.out.println("finish write object");
        
        ObjectInputStream in = new ObjectInputStream(new FileInputStream("binary4.dat"));
        System.out.println("name:"+ in.readUTF());
        System.out.println("gender:"+ in.readChar());
        System.out.println("date:"+ in.readObject());
        Circle c2 = null;
        c2 = (Circle) in.readObject();
        System.out.println("Area:"+c2.getArea());
        System.out.println("finish reading file");
        
    }
}
class Circle implements Serializable{
    double radius;
    static int numberOfObject;
    SpecialCircle sc = new SpecialCircle();

    public Circle(double radius) {
        this.radius = radius;
        numberOfObject++;
    }
    double getArea(){
        return Math.PI*radius*radius;
    }
}
class SpecialCircle implements Serializable{
    
}