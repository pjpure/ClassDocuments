/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import com.sun.javafx.perf.PerformanceTracker;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author ppbas
 */
public class FileIO {
    public static void writeData(CarParking t1) throws FileNotFoundException, IOException{
    ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream("Database.txt"));
    out.writeInt(SettingFee.confixSave());
    out.writeInt(FeeCal.getFeePerHour());
    out.writeInt(FeeCal.getFeePerDay());
        out.writeInt(t1.arr1.size());
        for (int i = 0; i <t1.arr1.size(); i++) {
            System.out.println("Writing..."+t1.arr1.get(i));
            out.writeObject(t1.arr1.get(i));
        }
        out.close();
        System.out.println("Writing File Complete");
    }
    public static void readData(CarParking t1) throws FileNotFoundException, IOException, ClassNotFoundException{
        ObjectInputStream in = new ObjectInputStream(new FileInputStream("Database.txt"));
        SettingFee.confixRead(in.readInt());
        FeeCal.setFeePerHour(in.readInt());
        FeeCal.setFeePerDay(in.readInt());
        int remain = in.readInt();
        System.out.println(remain);
        while(remain!=0){
        t1.arr1.add((Car) in.readObject());
        Car.carCount++;
        System.out.println("Array: "+t1.arr1.size());
        remain--;
        }
        sort(t1);
        System.out.println("Reading File Complete");
    }
    private static void sort(CarParking t1){
        for(int i = 0 ;i<t1.arr1.size();i++){
            if(t1.arr1.get(i).carPlace>=0&&t1.arr1.get(i).carPlace<t1.isParked.length){
                int place = t1.arr1.get(i).carPlace;
                t1.isParked[place] = 1 ;
            }
        }
    }
    public static void saveLog(Car c1) throws FileNotFoundException, IOException{
        File f1 = new File("log.txt");
        FileWriter w1 = new FileWriter(f1,true);
        w1.write(c1.toLog()+'\n');
        w1.close();
        
    }
    public static ArrayList<Log> readLog() throws FileNotFoundException{
        File f1 = new File("log.txt");
        Scanner in = new Scanner(f1);
        ArrayList<Log> arlog = new ArrayList<>();
        while(in.hasNext()){
            arlog.add(new Log(in.nextLine(), in.nextLine(), in.nextLine(), in.nextLine(), in.nextLine(),in.nextLine()));
        }
        in.close();
        Collections.reverse(arlog);
        return arlog;

    }

}
 