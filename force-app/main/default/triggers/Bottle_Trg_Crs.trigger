trigger Bottle_Trg_Crs on Course__c (before insert,before update) {
    //Trigger.new; //==> participating Course Records
    List<Bottle__c> bottles = [select id,name,price__c from Bottle__c];
    for(Course__c crs : Trigger.new){
        for(Bottle__c bottle : bottles){
            if(crs.Fees__c < bottle.price__c){
                crs.Fees__c.addError('Bottle cant be costly than course');
            
            }//end of if
        }//end of bottle for
    
    }//end of course for

}//end of trigger