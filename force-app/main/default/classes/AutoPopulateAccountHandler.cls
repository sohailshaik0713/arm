public class AutoPopulateAccountHandler {
    public static void checkRevenue(List<Account> accList){
        for(Account acc : accList){
            if(acc.Industry == 'Banking'){
                acc.AnnualRevenue = 500000;
            }
            else if(acc.Industry == 'Finance'){
                acc.AnnualRevenue = 400000;
            }
            else if(acc.Industry == 'Insurance'){
                acc.AnnualRevenue = 300000;
            }
            else if(acc.Industry == 'Health Care'){
                acc.AnnualRevenue = 200000;
            }
            else{
                acc.AnnualRevenue = 100000;
            }
                
            
                
            
        }
    }

}