/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ex9_xx;

import java.util.Scanner;

/**
 *
 * @author PURE
 */
public class Atm {
    private int id;
    private double balance = 0;
    private double withdraw = 0;
    private double deposit = 0;
    private int select=4,selectId;

    public Atm() {
    }

    public Atm(int id,double balance) {
        this.id = id;
        this.balance = balance;
    }
    public void setSelect(){
        Scanner input1 = new Scanner(System.in);
        select=input1.nextInt();
    }
    public void setSelectId(){
        Scanner input2 = new Scanner(System.in);
        selectId=input2.nextInt();
    }

    public int getSelect() {
        return select;
    }

    public int getSelectId() {
        return selectId;
    }
    
    public int getId() {
        return id;
    }
    
    public double getBalance() {
        return balance;
    }

    public double getWithdraw() {
        return withdraw;
    }

    public double getDeposit() {
        return deposit;
    }

    public void setWithdraw() {
        Scanner input3 = new Scanner(System.in);
        withdraw=input3.nextDouble();
        balance-=withdraw;
    }

    public void setDeposit() {
        Scanner input4 = new Scanner(System.in);
        deposit=input4.nextDouble();
        balance+=deposit;
    }
    
    
}
