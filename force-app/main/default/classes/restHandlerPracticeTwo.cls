@RestResource(urlMapping = '/anyname')
Global class restHandlerPracticeTwo {
    
    @HttpGet
    global static list<opportunity> handleget(){
        RestRequest request = Restcontext.request;
        RestResponse response = Restcontext.response;
        system.debug(request.params);
        
        Map<string,string> paramMap = request.params;
        system.debug('paramMap' + paramMap);
        
        string stagename = paramMap.get('stagename');
        system.debug('stagename' + stagename); 
        
       // list<opportunity> oppList = [select id,stagename,name,closedate from opportunity where stagename = 'Prospecting'];
         list<opportunity> oppList = [select id,stagename,name,closedate from opportunity where stagename = :stagename];
        return oppList;
    }

}