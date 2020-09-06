/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EX11_3;

/**
 *
 * @author PURE
 */
public class Test {

    public static void main(String[] args) {
        SavingAccount sa = new SavingAccount("A",111, 4000);
        CheckingAccount ca = new CheckingAccount("B",222, 5000);
        PrivilegedAccount pa = new PrivilegedAccount("C",333, 6000);
        sa.setannualInterestRate(1.5);
        sa.setDeposit(500);
        ca.setDeposit(100);
        pa.setDeposit(100);
        sa.setWithdraw(60000);
        pa.setWithdraw(1000);
        ca.setWithdraw(200);
        
        System.out.println(sa);
        System.out.println("");
        System.out.println(ca);
        System.out.println("");
        System.out.println(pa);
    }
}
