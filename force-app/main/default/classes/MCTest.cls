@isTest
public class MCTest {
    public static @isTest void anyName(){
        Integer age = 25;
        //plural Api defined
        List<Integer> ages = new List<Integer>();
        //Collection<DataType> coll_name = new Collection<DataType>();
        //ClassName obj = new ClassName();
        //User defined
        Rectangle box = new Rectangle();
        List<Rectangle> boxes = new List<Rectangle>();
        List<BankAccount> bank_acs = new List<BankAccount>();
        //BankAccount ba1 = new BankAccount();
        List<Account> acs = new List<Account>();
        Account ac = new Account();
        //List<Angle> agl = new List<Angle>();
        //ClassName obj = new ClassName();
        //Angle agl = new Angle();
        
        //create record(Model) <==> object(Controller)
        //ClassName(Controller) <==> sObject(Model)
        Course__c crs1 = new Course__c();//Created record
        crs1.name = 'AngularJS';//Standard field,load data into fields
        crs1.Fees__c = 800;//Custom field
        crs1.Duration__c = 4;
        //insert object
        //insert crs1
        
        Course__c crs2 = new Course__c();//Created record
        crs2.name = 'Mule';//Standard field,load data into fields
        crs2.Fees__c = 900;//Custom field
        crs2.Duration__c = 5;
        
        Course__c crs3 = new Course__c();//Created record
        crs3.name = 'NodeJS';//Standard field,load data into fields
        crs3.Fees__c = 1000;//Custom field
        crs3.Duration__c = 6;
        
        Course__c crs4 = new Course__c();//Created record
        crs4.name = 'PBI';//Standard field,load data into fields
        crs4.Fees__c = 1100;//Custom field
        crs4.Duration__c = 7;
        Student__c stud1 = new Student__c();
        //insert object
        /*insert crs1;
        insert crs2;
        insert crs3;
        insert crs4; */
        
        //List<DataType> coll_name = new List<DataType>;
        List<Integer> marks = new List<Integer>();
        //Assigning and loading the value
        Integer m1 = 86;
        Integer m2 = 75;
        Integer m3 = 92;
        Integer m4 = 80;
        Integer m5 = 80;
        //add elements to a list - coll_name.add(DtaType)
        marks.add(m1);
        marks.add(m2);
        marks.add(m3);
        marks.add(m4);
        marks.add(m5);
        System.debug('The marks are : ' + marks);
        
        List<Course__c> courses = new List<Course__c>();
        courses.add(crs1);//element of a course
        courses.add(crs2);//element of a course
        courses.add(crs3);//element of a course
        courses.add(crs4);//element of a course
        //insert collection
        insert courses;//DML insert Execution
        
        //fetch records using ====>   soql
        List<Course__C> my_courses = [select id,name,Fees__c,Duration__c  from Course__c];
        System.debug('My courses are : ' + my_courses);//All records display
        
        //Access each course separately use for each in loop
        for (Course__C my_course : my_courses){
            System.debug('Course Details : ' + my_course);//each record display
        } 
        
        //for each course in my_courses to Access Every field in each record
        for (Course__C my_course1 : my_courses){//Every field in each record
            
            System.debug('Course Details ');
            System.debug('Course name : ' + my_course1.name);
            my_course1.Name = 'Upsert' + my_course1.name;
            System.debug('Course Fees__c : ' + my_course1.Fees__c);
            my_course1.Fees__c +=50;
			System.debug('Course Duration__c : ' + my_course1.Duration__c);
            //update my_course1;//8 times
		}
        
        //Apply DML operations to make multiple statements in single statement using collection 
        //DML statements must never be placed in loops reason for above statement; 
        update my_courses;
        //upsert my_courses;
        //delete  my_courses;
         
        //fetch new version of the records after update my_courses for printing;
        List<Course__C> new_courses = [select id,name,Fees__c,Duration__c  from Course__c];
        for(Course__C new_crs : new_courses){//each record each field
            System.debug('New course details are');
            System.debug('Course name is : ' + new_crs.name);
            System.debug('Course Fees__c is : ' + new_crs.Fees__c);
            System.debug('Course Duration__c is : ' + new_crs.Duration__c);
        }
        
    }

}