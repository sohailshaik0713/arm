trigger AccountDel on Account (before delete) {
    if(Trigger.isDelete && Trigger.isBefore){
        for(Account accRecord : Trigger.old){
            if(accRecord.Active__c == 'Yes'){
                accRecord.addError('You dont have Authorization to delete the active record');
            }
        }
    }

}