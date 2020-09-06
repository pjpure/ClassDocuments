/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EX11_3;

import java.util.Date;

/**
 *
 * @author PURE
 */
public class Transaction {
    private Date dateCreated;
    private char type;
    private double amount;
    private double balance;

    public Transaction() {
        dateCreated = new Date();
    }

    public Transaction(char type, double amount, double balance) {
        this.type = type;
        this.amount = amount;
        this.balance = balance;
        dateCreated = new Date();
    }
    public Transaction(char type, double balance){
        this.type = type;
        this.balance = balance;
        dateCreated = new Date();
    }

    @Override
    public String toString() {
        return "\nTransaction{" + "dateCreated=" + dateCreated + ", type=" + type + ", amount=" + amount + ", balance=" + balance + '}';
    }
}
