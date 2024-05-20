trigger AutoPopulateAccunt on Account (before insert,before update) {
    if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isBefore){
        AutoPopulateAccountHandler.checkRevenue(Trigger.New);
        
    }

}