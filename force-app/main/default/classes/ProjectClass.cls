@isTest
public class ProjectClass {
    public @isTest static void main(){
        List<Project__c> projList = new List<Project__c>();// collection
        
        Project__c proj_obj = new Project__c(); //instance
        proj_obj.Name= 'chai';
         proj_obj.Project_Duration__c = '20';
         projList.add(proj_obj);
        insert projList;
        
        
       
      /*  proj_obj.add()
        projList.add('Sony');
        projList.add('Dell');
        projList.add('Lenovo');
        System.debug('Display the ProjectList' + projList);*/
    }

}