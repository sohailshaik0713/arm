@RestResource(urlmapping = '/testOrg/')
Global class restHandler {
    
    public static void method_one(){
        RestRequest request = RestContext.request;
        RestResponse response = RestContext.response;
        
    }
    @HttpGet
    global static List<Account> handleGet(){
        List<Account> acclist = [select id,name,rating from account limit 10];
        return acclist;
        
    }
    @HttpPost
    global static string handlePost(){
     /*   account acc = new account();
        acc.name = 'Post request';
        acc.Rating = 'Hot';
        acc.Industry = 'Banking';
        
        insert acc;
        return acc.Id; */
        RestRequest request =RestContext.request;
        system.debug(request.params);
        system.debug(request.httpMethod);
        system.debug(request.requestURI);
        system.debug(request.requestBody);
        
        blob requestbody = request.requestBody;
        string reqbody = requestBody.toString();
        system.debug('reqBody' + reqBody);
        Accwrap obj =(Accwrap) json.deserialize(reqbody, Accwrap.class);
        system.debug(obj);
        
        account acc = new account();
        acc.Name = obj.AccName;
        acc.Rating = obj.AccRating;
        acc.Industry = obj.SAPIndustry;
        insert acc;
        return acc.Id;
        
       
        
    }
    @HttpPut
    global static void handlePut(){
        
    }
    @HttpDelete
    global static void handleDelete(){
        list<account> accList = [select id,name from account where name = 'Post request'];
        delete accList;
        
    }
    public class Accwrap{
        public string AccName;
        public string AccRating;
        public string SAPIndustry;
    }

}