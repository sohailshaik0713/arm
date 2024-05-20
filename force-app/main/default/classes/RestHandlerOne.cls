@RestResource(urlMapping = '/Sohail/')
Global class RestHandlerOne {
    
    @HttpGet
    global static List<Account> getAccount(){
        
    List<Account> accList = [select id,name,rating from account where rating != null limit 5];
    return accList;
    }
    
    global static List<contact> getContacts(){
        
        List<contact> conList = [select id,firstname,lastname from contact limit 10 ];
        return conList;
    }

}