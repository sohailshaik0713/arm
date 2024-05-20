public class ClassNameA {
    public static void funtion(List<Account> AccList){
    List<Account> updateacc = new List<Account>();
    for(Account a:AccList){
        if(a.Industry == 'Agriculture'){
            a.Rating = 'Hot';
            updateacc.add(a);
            
        }
    }
    }
}