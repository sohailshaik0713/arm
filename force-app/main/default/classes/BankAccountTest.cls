@isTest
public class BankAccountTest {
    static testmethod void main(){
    BankAccount BA1 = new BankAccount('cn0','dob0',999,'branch0','ifsc_code0');
        BA1.getvalues();
	BA1.setvalues('cn1','dob1',123,'branch1','ifsc_code1');
    BA1.getvalues();
	}
    /*
    static testmethod void pain(){
    BankAccount BA2 = new BankAccount();
	BA2.setvalues('cn2','dob2',456,'branch2','ifsc_code2');
    BA2.getvalues();
	}
    static testmethod void rain(){
    BankAccount BA3 = new BankAccount();
	BA3.setvalues('cn3','dob3',789,'branch3','ifsc_code3');
    BA3.getvalues();
	}
    static testmethod void zain(){
    BankAccount BA4 = new BankAccount();
	BA4.setvalues('cn4','dob4',100,'branch4','ifsc_code4');
    BA4.getvalues();
	}
    static testmethod void wain(){
    BankAccount BA5 = new BankAccount();
	BA5.setvalues('cn5','dob5',999,'branch=5','ifsc_code5');
    BA5.getvalues();
	} */
    
}