//Test Class
@isTest
public class EmployeeTest {
    //To test the behaviour of Business Class
    //Create Object
    //ClassName object_name = new ClassName()
    public static testmethod void main(){
	Employee emp1 = new Employee();
    //object.member
    emp1.setvalues('Mohith','12345',50000);
    //emp1.emp_name = 'Chaitanya';
    emp1.getvalues();
    }

}