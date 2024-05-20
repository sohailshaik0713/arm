public class DemoClass {
    @future
    public static Void updateCourseFees(){
        /*System.debug('Statement 1');
        System.debug('Statement 2');
        System.debug('Statement 3');
        System.debug('Statement 4');
        System.debug('Statement 5'); */
        //return 15;
        List<Course__C> my_courses = [select id,name,Fees__c,Duration__c  from Course__c];
        for (Course__C my_course1 : my_courses){//Every field in each record
            
            System.debug('Course Details ');
            System.debug('Course name : ' + my_course1.name);
            my_course1.Name = 'Upsert' + my_course1.name;
            System.debug('Course Fees__c : ' + my_course1.Fees__c);
            my_course1.Fees__c +=50;
			System.debug('Course Duration__c : ' + my_course1.Duration__c);
            //update my_course1;//8 times
		}
        update my_courses;
    }

}