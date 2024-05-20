trigger LeadTrigger on Lead (before insert,before update) {
    if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isBefore){
        LeadTriggerHandler.fieldsRequired(Trigger.New);
    }

}