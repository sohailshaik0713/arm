//Business class
public class BankAccount{
    //Data memebers - Features
    private String cust_name;
    private String dob;
    private Long accno;
    private String branch;
    private String ifsc_code;
    
    //Member Methods provides service to data memebers
    //public return_type metdName(dt n1,dt n2,dt n3...){
    //}
   /* public BankAccount(){
      cust_name = 'No Name';
      dob = 'DD/MM/YYYY';
      accno =0;
      branch = 'branch name';
      ifsc_code = 'Enter code';
        
    } */
    
    public BankAccount(String BAcust_name,String BAdob,Long BAaccno,String BAbranch,String BAifsc_code){
    cust_name = BAcust_name;
    dob = BAdob;
    accno = BAaccno;
    branch = BAbranch;
    ifsc_code = BAifsc_code;
    }
    
    public void setvalues(String BAcust_name,String BAdob,Long BAaccno,String BAbranch,String BAifsc_code){
    cust_name = BAcust_name;
    dob = BAdob;
    accno = BAaccno;
    branch = BAbranch;
    ifsc_code = BAifsc_code;
    }
     //public return_type metdName(dt n1,dt n2,dt n3...){
    //Process
    //}
    public void getvalues(){
     System.debug('BankAccount customer_name is ' + cust_name);
     System.debug('BankAccount dob is ' + dob);
     System.debug('BankAccount account_nunber is ' + accno);
     System.debug('BankAccount branch_name is ' + branch);
     System.debug('BankAccount ifsc_code is ' + ifsc_code);
     
    }
}