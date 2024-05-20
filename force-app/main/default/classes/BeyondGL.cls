//								  TLC.innerInterface
public class BeyondGL implements Database.Batchable<Course__c>{
    public Iterable<Course__c> start(Database.BatchableContext bc){
    List<Course__C> Courses = [select id,name,Fees__c,Duration__c  from Course__c];
    return Courses;    
    }
    public void execute(Database.BatchableContext bc, List<Course__c> Courses){
    for (Course__C each_course : Courses){//Every field in each record
    System.debug('Course Fees__c : ' + each_course.Fees__c);
    each_course.Fees__c +=2;
	}
    upsert Courses;
	}
    
    public void finish(Database.BatchableContext bc){
        System.debug('Batch Processing Completed');
    }

}