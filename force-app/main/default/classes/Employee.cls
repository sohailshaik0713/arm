//Business Class
public class Employee {
    //private data members ... name,id,salary,dep
    //private datatype name 
    private String emp_name;
    private String emp_id;
    private Long emp_salary;
    
	//member methods - provide service to the data members
    //public return methdName() {
    //create
    //}   
    public void setvalues(String ename,String eid,Long esalary){
     emp_name = ename;
     emp_id = eid;
     emp_salary = esalary;
    }
    //public return methdName() {
    //Process or Action
    //} 
    public void getvalues(){
     System.debug('Employee Name : ' + emp_name);
     System.debug('EmployeeID : ' + emp_id);
     System.debug('Employeesalary : ' + emp_salary);
    }

}