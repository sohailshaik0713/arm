trigger Scenario1 on Account (before insert,before update) {
    if(Trigger.isbefore &&(Trigger.isinsert || Trigger.isupdate)){
        for(Account acc : Trigger.new){
            
        }
    }

}