/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EX11_8;

/**
 *
 * @author PURE
 */
public class Test {
    public static void main(String[] args) {
        Account a1 = new Account("George",1122,1000);
        a1.setDeposit(30);
        a1.setDeposit(40);
        a1.setDeposit(50);
        a1.setWithdraw(5);
        a1.setWithdraw(4);
        a1.setWithdraw(2);
        a1.setannualInterestRate(1.5);
        System.out.println(a1.toString());
        System.out.println(a1.tr.toString());
    }
}
