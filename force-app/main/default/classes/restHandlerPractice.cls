@RestResource(urlMapping = '/mywish')
Global class restHandlerPractice {
    
    @HttpGet
    global static list<Account> handleget(){
        
        RestRequest request = Restcontext.request;
        RestResponse response = Restcontext.response;
        
        //First Parameter should start with '?'
        //From 2nd to n should start with '&' 
         
        system.debug(request.params);
        
        Map<string,string> ParamMap = request.params;
        system.debug('ParamMap' + ParamMap);
        
        String rating = ParamMap.get('rating');
        system.debug('rating' + rating);
        //list<Account> accList = [select id,name,rating from Account where rating = 'Hot'];
        list<Account> accList = [select id,name,rating from Account where rating = :rating];
        return accList;
        
    }

}