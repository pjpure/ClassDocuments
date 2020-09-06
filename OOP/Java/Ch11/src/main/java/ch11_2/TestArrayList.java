/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch11_2;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 *
 * @author PURE
 */
public class TestArrayList {
    public static void main(String[] args) {
        ArrayList<Transaction> tr = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            tr.add(new Transaction('w',20000)); 
            tr.add(new Transaction('d',20000));
            System.out.println(tr);
        }
    }
}
class Transaction{
    char type;
    Calendar date;
    double amount;
    Transaction(char type, double amount){
        this.type = type;
        this.amount = amount;
        date = new GregorianCalendar();
    }

    @Override
    public String toString() {
        return "Transaction{" + "type=" + type + ", date=" + date + ", amount=" + amount + '}';
    }
    
}
