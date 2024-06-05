trigger AccountTrigger on Account (before insert,before update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        for(Account a: Trigger.New){
            Switch ON a.Industry{
                When 'Banking'{
                    a.AnnualRevenue = 4000000;    
                }
                When 'Finance'{
                    a.AnnualRevenue = 6000000;   
                }
                When 'Insurance'{
                    a.AnnualRevenue = 9000000; 
                }
                When 'Manufacturing'{
                    a.AnnualRevenue = 1000000;
                }
                When 'Technology'{
                    a.AnnualRevenue = 5000000;
                }
                When 'Energy'{
                    a.AnnualRevenue = 7000000;
                    //changes done
                }
            }
        }
    }

}