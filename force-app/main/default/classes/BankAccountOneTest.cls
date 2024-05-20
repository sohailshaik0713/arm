@isTest
public class BankAccountOneTest {
    public static testMethod void anyName(){
     BankAccountOne ba_1 = new BankAccountOne();//DC
     BankAccountOne ba_2 = new BankAccountOne('Tiju',1234,10000);
     ba_1.setvalues('Akhil',0001,5000);
     ba_1.getvalues();
     //ba_2.setvalues('Tiju',1234,10000);
     ba_2.getvalues();
        ba_1.deposit(1000);
        ba_1.withdraw(500);
        
    }

}