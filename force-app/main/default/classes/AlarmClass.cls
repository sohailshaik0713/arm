public class AlarmClass implements Schedulable{
//return_type mtdName datatype.        name
public void execute(SchedulableContext sch_sc){
    List<Course__C> my_courses = [select id,name,Fees__c,Duration__c  from Course__c];
        System.debug('My courses are : ' + my_courses);//All records display
        
        //Access each course separately use for each in loop
        for (Course__C each_course : my_courses){
            System.debug('Course Details : ' + each_course);//each record display
        } 
        
        //for each course in my_courses to Access Every field in each record
        for (Course__C all_fields : my_courses){//Every field in each record
            
            System.debug('Course Details ');
            System.debug('Course name : ' + all_fields.name);
            all_fields.Name = 'Upsert' + all_fields.name;
            
            System.debug('Course Fees__c : ' + all_fields.Fees__c);
            all_fields.Fees__c +=50;
            
            System.debug('Course Duration__c : ' + all_fields.Duration__c);
            //update my_course1;//8 times
        }
        
        //Apply DML operations to make multiple statements in single statement using collection 
        //DML statements must never be placed in loops reason for above statement; 
        //update my_courses;
        upsert my_courses;
        //delete  my_courses;


}

}