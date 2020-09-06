/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Exercise;

import P2.Circle;
import java.util.Date;

/**
 *
 * @author PURE
 */
public class Account {

    private int id = 0;
    private double balance = 0;
    private double annualInterestRate = 0;
    private Date dateCreated;
    

    Account(){
    dateCreated = new Date();
}        
    Account(int newId, double newBalance) {
        id = newId;
        balance = newBalance; 
        dateCreated = new Date();
    }
    public void setannualInterestRate(double newAnnualInterestRate) {
        annualInterestRate=newAnnualInterestRate;    
    }
    public void setWithdraw(double Withdraw) {
        balance=balance- Withdraw;   
    }
    public void setDeposit(double Deposit) {
        balance=balance+ Deposit;   
    }
    public int getId(){
        return id;
    }
    public double getBalance(){
        return balance;
    }
    public double getAnnualInterestRate(){
        return annualInterestRate;
    }
    public Date getDateCreated(){
        return dateCreated;
    }
    public double getMonthlyInterestRate(){
        return annualInterestRate/12;
    } 
    public double getMonthlyInterest(){
        return getMonthlyInterestRate()*getBalance()/100;
    }
}

class TestAccount{
    public static void main(String[] args) {
       Account a1 = new Account(1122, 20000);
       a1.setannualInterestRate(4.5);
       a1.setWithdraw(2500);
       a1.setDeposit(3000);
       System.out.println(a1.getBalance());
       System.out.println(a1.getMonthlyInterest());
       System.out.println(a1.getDateCreated());
    }
}