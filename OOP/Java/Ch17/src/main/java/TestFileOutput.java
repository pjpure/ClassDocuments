
import java.io.FileInputStream;
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
public class TestFileOutput {
    public static void main(String[] args) throws IOException {
        FileOutputStream out = new FileOutputStream("binary.dat");
        for (int i = 0; i < 10; i++) {
            out.write(i);
        }
        out.close();
        System.out.println("finish");
        System.out.println("start reading");
        FileInputStream in = new FileInputStream("binary.dat");
        while(in.available()!=0){
            System.out.println(in.read());
        }
        System.out.println("finish reading file");        
    }
    
    
}
