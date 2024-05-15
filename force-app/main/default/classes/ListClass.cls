@isTest
public class ListClass {
    public static @isTest void listMethod(){
    List<Bike__c> bikes = new  List<Bike__c>();
        
        Bike__c b = new Bike__c();
        b.Name = 'Pulsar';
        b.Colour__c = 'Black';
        b.Year_of_Model__c = '2014';
        bikes.add(b);
        
        Bike__c b1 = new Bike__c();
        b1.Name = 'TVS';
        b1.Colour__c = 'Red';
        b1.Year_of_Model__c = '2000';
        bikes.add(b1);
        
        insert bikes;
        System.debug('Show the bike names are : ' + bikes);
        
        bikes.remove(1);
        System.debug('Show the bike names after delete : ' + bikes);
      
       List<Bike__c> bikes1 = [Select id,Name,Colour__c,Year_of_Model__c from Bike__c];
        for(Bike__c each_bike : bikes1){
            each_bike.Name += 'update';
            
        }
        update bikes1;
        System.debug('Show the bike names after update : ' + bikes);
    }
}        
       
        
/*	Set<String> stud = new Set<String>();
		stud.add('Hari');
        stud.add('Navin');
        stud.add('Sai');
        System.debug('Show the names are : ' + acc);
       // stud.remove('Navin');
       // System.debug('Show the names after delete : ' + acc);  
    Map<String,String> Madam = new Map<String,String>();
		Madam.put('shruti','Suresh');
        Madam.put('sdf','Navin');
        Madam.put('lkj','Sai');
        System.debug('Show the names are : ' + Madam);
        Madam.remove('sdf');
        System.debug('Show the names after delete : ' + Madam); */