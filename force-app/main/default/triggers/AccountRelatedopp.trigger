trigger AccountRelatedopp on Account (After insert,After update) {
    List<opportunity> lisopp= new List<opportunity>();
    Map<id, Account> mapAcc = new Map<id, Account>([Select id,(Select id from Opportunities) From Account Where ID IN:TRigger.new]);
    for(Account a:trigger.new){
        if(mapAcc.get(a.id).Opportunities.Size()==0){
            lisopp.add(new Opportunity(Name = a.Name,StageName = 'Prospecting',
                                      CloseDate = System.today().addMonths(1),AccountId = a.Id));
        } 
    }
    if(lisopp.size() > 0){
        insert lisopp;
    }
}