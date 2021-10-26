
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author PURE
 */
public class TestFile {

    public static void main(String[] args) throws FileNotFoundException {
        File file = new File("TestText.txt");
        try ( PrintWriter output = new PrintWriter(file)) {
            output.println("Hello");
            output.println("World");
        }

    }
}
