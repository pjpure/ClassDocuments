public class TestAtm {

    public static void main(String[] args) {
        Atm[] arrayAtm = new Atm[10];
        for (int i = 0; i < arrayAtm.length; i++) {
            arrayAtm[i] = new Atm(i, 100);
        }
        Atm a1 = new Atm();
        while (true) {
            if (a1.getSelect() == 4) {
                System.out.println("");
                System.out.print("Enter an Id:");
                a1.setSelectId();
            }
            System.out.println("Main Menu");
            System.out.println("1: check balance");
            System.out.println("2: withdraw");
            System.out.println("3: deposit");
            System.out.println("4: exit");
            System.out.print("Enter a choice:");
            a1.setSelect();
            if(a1.getSelect()==1)  
            {
                System.out.println("The balance is "+arrayAtm[a1.getSelectId()].getBalance());
                System.out.println("");
            }
            if(a1.getSelect()==2)
            {
                System.out.print("Enter an amount to withdraw:");
                arrayAtm[a1.getSelectId()].setWithdraw();
                System.out.println("");
            }
            if(a1.getSelect()==3)
            {
                System.out.print("Enter an amount to deposit:");
                arrayAtm[a1.getSelectId()].setDeposit();
                System.out.println("");
            }
        }

    }
}