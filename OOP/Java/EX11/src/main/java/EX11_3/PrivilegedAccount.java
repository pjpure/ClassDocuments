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
public class PrivilegedAccount extends Account{

    public PrivilegedAccount() {
    }

    public PrivilegedAccount(String name, int id, double balance) {
        super(name, id, balance);
    }
    
    @Override
    public void setDeposit(double Deposit) {
        super.setDeposit(Deposit); //To change body of generated methods, choose Tools | Templates.
        super.toString();
    }

    @Override
    public void setWithdraw(double Withdraw) {     
        super.setWithdraw(Withdraw); //To change body of generated methods, choose Tools | Templates.
        
    }
    
}
