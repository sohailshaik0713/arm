@isTest
public class BottleTest {
    public static @isTest void anyName(){
        //create record(Model) <==> object(Controller)
        //ClassName(Controller) <==> sObject(Model)
        
        Bottle__c bottle1 = new Bottle__c();
        bottle1.Name = 'Aquafina';
        bottle1.Price__c = 50;
        bottle1.Quantity__c = 10;
        System.debug('Bottle1 details are : ' + bottle1);
        
        Bottle__c bottle2 = new Bottle__c();
        bottle2.Name = 'Dasani';
        bottle2.Price__c = 100;
        bottle2.Quantity__c = 20;
        System.debug('Bottle2 details are : ' + bottle2);
        
        Bottle__c bottle3 = new Bottle__c();
        bottle3.Name = 'Nestle';
        bottle3.Price__c = 150;
        bottle3.Quantity__c = 30;
        System.debug('Bottle3 details are : ' + bottle3);
        
        Bottle__c bottle4 = new Bottle__c();
        bottle4.Name = 'Ozarka';
        bottle4.Price__c = 200;
        bottle4.Quantity__c = 40; 
        System.debug('Bottle4 details are : ' + bottle4);
        
        Bottle__c bottle5 = new Bottle__c();
        bottle5.Name = 'Bisleri';
        bottle5.Price__c = 250;
        bottle5.Quantity__c = 50;
        System.debug('Bottle5 details are : ' + bottle5);
        //insert object
        insert bottle1;
		insert bottle2;
		insert bottle3;
		insert bottle4;
		insert bottle5;
        
        List<Bottle__c> bottles = new List<Bottle__c>();
        Bottle__c bottle6 = new Bottle__c();
        bottle6.Name = 'Milton';
        bottle6.Price__c = 1000;
        bottle6.Quantity__c = 1;
        
        
        Bottle__c bottle7 = new Bottle__c();
        bottle7.Name = 'Nilkamal';
        bottle7.Price__c = 1100;
        bottle7.Quantity__c = 2;
        
        
        Bottle__c bottle8 = new Bottle__c();
        bottle8.Name = 'Dmart';
        bottle8.Price__c = 1200;
        bottle8.Quantity__c = 3;
        
        
        Bottle__c bottle9 = new Bottle__c();
        bottle9.Name = 'Reliance';
        bottle9.Price__c = 1300;
        bottle9.Quantity__c = 4;
        
        Bottle__c bottle10 = new Bottle__c();
        bottle10.Name = 'IQOO';
        bottle10.Price__c = 1400;
        bottle10.Quantity__c = 5;
        
        
        bottles.add(bottle6);
        bottles.add(bottle7);
        bottles.add(bottle8);
        bottles.add(bottle9);
        bottles.add(bottle10);
        //insert collection
        insert bottles;
        
        List<Bottle__c> my_bottles = [select Name,Price__c,Quantity__c   from Bottle__c ];
        System.debug('Bottle1 to Bottle10 details are : ' + my_bottles);
        
        for(Bottle__c my_bottle : my_bottles){
            System.debug('Bottle details : ' + my_bottle);
        } 
        
        for(Bottle__c my_bottle1 : my_bottles){
            
            //List<Bottle__c> my_bottles_price_update = new List<Bottle__c>();
            System.debug('Bottle Details');
            System.debug('Bottle Name : ' + my_bottle1.Name);
            my_bottle1.name = 'Update' + my_bottle1.Name;
            System.debug('Bottle Price__c : ' + my_bottle1.Price__c);
            my_bottle1.Price__c += 100;
            System.debug('Bottle Quantity__c : ' + my_bottle1.Quantity__c);
            
        }
        update my_bottles; 
        //upsert my_bottles;
        //delete my_bottles;
        //undelete my_bottles;
        List<Bottle__c> new_bottles = [select Name,Price__c,Quantity__c   from Bottle__c];
        for(Bottle__c bottle : new_bottles){        
        System.debug('Bottle Details after update');
        System.debug('Bottle Name : ' + bottle.Name);
        System.debug('Bottle Price__c : ' + bottle.Price__c);
        System.debug('Bottle Quantity__c : ' + bottle.Quantity__c);
        }
        
        
    }

}