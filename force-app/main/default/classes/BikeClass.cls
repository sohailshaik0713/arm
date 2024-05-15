public class BikeClass implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'Select id,Name,Colour__c from Bike__c';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, List<Bike__c> Scope){
        //System.debug('Bike name in execute : ' + Bike__c);
       // List<Bike__c> list_bikes = new List<Bike__c>();
        for(Bike__c b : Scope ){
            //Bike__c b2 = new Bike__c();
            b.Name = 'TVS';
            b.Colour__c = 'Yellow';
            
            //Bike__c b1 = new Bike__c();
            //b1.Name = 'LG';
            //b1.Colour__c = 'White';
            
            //Scope.add(b2);
            //Scope.add(b1);
            }
        insert Scope;
       
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('Batch Processing Completed');
    }

}