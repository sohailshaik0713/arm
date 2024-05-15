@RestResource(urlMapping = '/somename/')
Global class restHandlertwo {
    
    @HttpGet
    global static list<Opportunity> handleget(){
        RestRequest request = Restcontext.request;
        RestResponse response = Restcontext.response;
        system.debug(request.params);
        Map<string,string> paramMap = request.params;
        string stage = paramMap.get('stage');
        list<Opportunity> oppList = [select id,name,stagename,closedate from opportunity where stagename = :stage ];
        return oppList;
        
    }

}