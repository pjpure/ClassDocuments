
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
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
public class TestBufferInOutStream {
    public static void main(String[] args) throws FileNotFoundException, IOException {
        BufferedInputStream in = new BufferedInputStream(new FileInputStream("binary2.dat"));
        BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream("binary3.dat"));
        int nBye = 0;
        while (in.available()!=0) {            
            out.write(in.read());
            nBye++;
        }
        out.close();
        System.out.println("number of bye = "+nBye);
        
        DataInputStream input = new DataInputStream(new FileInputStream("binary3.daat"));
        
    }
}
