trigger ContactTrigger on Contact (before insert,before update) {
    if((Trigger.isInsert || Trigger.isUpdate )&& Trigger.isBefore){
        ContactTriggerHandler.createdRecord(Trigger.new);        
    }

}