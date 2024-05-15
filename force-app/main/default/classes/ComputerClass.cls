public class ComputerClass implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        String quer = 'Select id,Name,Price__c from Computer__c';
        return Database.getQueryLocator(quer);
        
    }
    
    public void execute(Database.BatchableContext bc,List<Computer__c> Scope){
       
       /* for(Computer__c c : Scope){
            c.Name = 'Vivo';
            c.Price__c = 1000;
        } */
        
        
        
        Computer__c c1 = new Computer__c();
       // Account a = new Account();
       // a.Name = 'Lenovo';
        c1.Name = 'Adil';
        c1.Price__c = 1000;
        //c1.Specification__c = 'intel';
        //Computers.add(c1);
        //insert a;
        try{
        //insert Computers;
        insert c1;
		//System.debug('Record inserted successfully');
        }
        catch (exception e){
            System.debug('Batch Processing Failed');
        } 
    }
    public void finish(Database.BatchableContext bc){
        System.debug('Batch Processing Completed');
    }
}