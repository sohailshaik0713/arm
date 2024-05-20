public class BankAccountOne {
    private String ach_name;
    private Integer ac_no;
    private Decimal ac_bal;
    
    //DC
    //create
    public BankAccountOne(){
     ach_name = 'No Name';
     ac_no = 0;
     ac_bal = 0.0;
    }
    //PC
    public BankAccountOne(String name, Integer no, Decimal bal){
     ach_name = name;
     ac_no = no;
     ac_bal = bal;
    }

    //input
    public void setvalues(String name, Integer no, Decimal bal){
     ach_name = name;
     ac_no = no;
     ac_bal = bal;
    }
    //action
    //deposit
    public void deposit(Integer amount){
		ac_bal = ac_bal + amount;
		}
    //withdraw
    public void withdraw(Integer amount){
    	ac_bal = ac_bal + amount;    
        }
    //checkbalance
    //output
    public void getvalues(){
     System.debug('Account Holder name : ' + ach_name);
     System.debug('Account Number : ' + ac_no);
     System.debug('Account Balance : ' + ac_bal);
    }
}