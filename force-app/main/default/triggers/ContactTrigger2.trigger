trigger ContactTrigger2 on Contact (before insert,before update) {
    if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isBefore){
        for(Contact con : Trigger.new){
            if(con.AccountId == null ){
            con.AccountId.adderror('Please Enter AccountName'); 
            }
        }
    }

}