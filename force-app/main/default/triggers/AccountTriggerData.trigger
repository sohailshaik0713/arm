trigger AccountTriggerData on Account (after insert,before update) {
    List<Contact> conList = new List<Contact>();
    List<Opportunity> oppList = new List<Opportunity>();
    
    for(Account acc : Trigger.new){
    
        Contact con = new Contact();
        con.AccountId = acc.Id;
        con.Phone = acc.Phone;
        con.LastName = acc.Name;
        conList.add(con);
        
        Opportunity opp = new Opportunity();
        opp.AccountId = acc.Id;
        opp.Name = acc.Name;
        opp.CloseDate = date.today()+14;
        opp.StageName = 'Prospecting';
        oppList.add(opp);
        
    }
    insert conList;
    insert oppList;

}