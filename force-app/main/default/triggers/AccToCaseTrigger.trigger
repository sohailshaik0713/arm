//scenario:- if Account is created or updated check related Cases if it is not there then automatically it will be inserted 
//Object:Account
//Events:- After insert and After update
trigger AccToCaseTrigger on Account (After insert) {
    //first we have to create list of case  to add a record that record will assign to a particular Account record
    List<Case> cList = new List<Case>();
    // you have to fetch the map of id wrt Account records and add the id was a new Account id
  
        Map<Id,Account> accmap = new Map<Id,Account>([select id ,name,(Select id from Cases) from Account where id in:trigger.new ]);
    //write a for loop to each record when its created or edited
        For(Account a:Trigger.new){
         //fetch the map of AccountIds related cases is not there
            if(accmap.get(a.id).Cases.Size() == 0){
                //create a instance caserecord
                cList.add(new Case(Origin = 'Phone',Status = 'New',Accountid = a.Id));
            }
        }
    //then check the case list if it is no records found
        if(cList.size() > 0){
            //insert the caserecord
            insert Clist;
        }
        
        
    }