@isTest
public class PowerBankTest {
    //to test the behaviour of Business Class
    //Create Object
    //ClassName object_name = new ClassName()
    static testmethod void main(){
        PowerBank PB = new PowerBank();
        //object.member
        PB.input('Boat',10,5000,2000,1);
        PB.output();
       
    }
}