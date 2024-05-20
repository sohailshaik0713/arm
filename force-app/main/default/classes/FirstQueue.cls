public class FirstQueue implements Queueable{

public void execute(QueueableContext qc){
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
            my_course1.Fees__c +=5;
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
     
         SecondQueue sq = new SecondQueue();
         System.enqueueJob(sq);
        }  
}