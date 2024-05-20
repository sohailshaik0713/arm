trigger Bottle_Price_Trg1 on Bottle__c (before insert, before update,before delete) {
    // validation
    //data ==> Data related TCV ==> Trigger.new ==> List
    //       false = true
    //       true = true
    if(Trigger.isinsert ){
        List<Bottle__c> bottles = Trigger.new;
            for(Bottle__c bottle : bottles){
                if(bottle.price__c > 500){
                    bottle.price__c.adderror('Expensive bottle,cant buy,please gift it');
                }//end of if  price
            }//end of for bottle
    }//end of if  insert
    
    else if(Trigger.isupdate ){
        List<Bottle__c> bottles = Trigger.new;
            for(Bottle__c bottle : bottles){
                if(bottle.price__c > 1000){
                    bottle.price__c.adderror('Expensive bottle,cant update,please gift it');
                }//end of if  price
            }//end of for bottle
    }//end of if  update
    
    else if(Trigger.isDelete ){
        List<Bottle__c> bottles = Trigger.old;
            for(Bottle__c bottle : bottles){
                if(bottle.price__c < 250){
                    bottle.price__c.adderror('Please dont break,please preserve it');
                }//end of if  price
            }//end of for bottle
    }//end of if delete
    
         
}//end of Trigger