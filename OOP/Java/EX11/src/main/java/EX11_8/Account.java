/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EX11_8;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author PURE
 */
public class Account {
    private double annualInterestRate = 0;
    private String name;
    private int id = 0;
    private double balance = 0;
    ArrayList<Transaction> tr = new ArrayList<>(); 
    
    Account() {

    }

    Account(String name, int id, double balance) {
        this.name = name;
        this.id = id;
        this.balance = balance;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }
    
    public void setWithdraw(double Withdraw) {
        balance=balance- Withdraw;   
        this.tr.add(new Transaction('W',Withdraw,balance));
    }
    public void setDeposit(double Deposit) {
        balance=balance+ Deposit;   
        this.tr.add(new Transaction('D',Deposit,balance));
    }
    
    public void setTransaction(Transaction transaction){
        tr.add(transaction);
    }

    public void setannualInterestRate(double newAnnualInterestRate) {
        annualInterestRate=newAnnualInterestRate;    
    }
    
    public double getAnnualInterestRate(){
        return annualInterestRate;
    }
    
    public double getMonthlyInterestRate(){
        return annualInterestRate/12;
    } 
    public double getMonthlyInterest(){
        return getMonthlyInterestRate()*getBalance()/100;
    }

    @Override
    public String toString() {
        return "Account{" + "annualInterestRate=" + annualInterestRate + ", name=" + name + ", id=" + id + ", balance=" + balance + '}';
    }

    
    
    
}
