
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class DataInOutStream {
    public static void main(String[] args) throws FileNotFoundException, IOException {
        FileOutputStream fos = new FileOutputStream("binary2.dat");
        try (DataOutputStream out = new DataOutputStream(fos)) {
            out.writeUTF("lnwza007");
            out.write(18);
            out.writeDouble(123.45);
            out.writeChar('M');
        }
        System.out.println("finish writing file");
        
        System.out.println("start reading File");
        DataInputStream in = new DataInputStream(new FileInputStream("binary2.dat"));
        System.out.println("Name: "+in.readUTF());
        System.out.println("Age: "+in.read());
        System.out.println("Height: "+in.readDouble());
        System.out.println("Gender: "+in.readChar());
        in.close();
        System.out.println("finish readding file");
    }
}
