trigger UpdateDaysSinceOpeningTrigger on Retail_Store__c (before insert, before update) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            RetailStoreDaysSinceOpening.updateDaysSinceOpening(Trigger.new);
        }
    }
}