//Business Class
public class Emp {
    //Data memebers -data/features
    private String emp_name;
    private String emp_id;
    private Integer emp_salary;
    
    //Member methods -instructions/behaviour
    //
    
    public Emp(){ //Load dummy values
	 emp_name = 'No name';
     emp_id = 'No id';
     emp_salary = 0;
    }
    public void setvalues(String ename,String eid,Integer esal){
        emp_name = ename;
        emp_id = eid;
        emp_salary = esal;
    }
    public void getvalues(){
        System.debug('Employee name is ' + emp_name);
        System.debug('Employee id is ' + emp_id);
        System.debug('Employee salary is ' + emp_salary);
        
    }

}