public with sharing class DynamicCustomLabels {
    
    @AuraEnabled(cacheable=true)
    public static Map<String,String> findAllCustomLabels(){
        string endpointURL='/services/data/v59.0/tooling/query/?q=Select+Name+from+CustomLabel';
        HttpRequest req = new HttpRequest();
         SessionId sessionJson = new SessionId();
         sessionJson = (SessionId)JSON.deserialize(Page.GenerateSessionId.getContent().toString(), SessionId.class);
        String idi = sessionJson.sessionId;
        req.setHeader('Authorization', 'Bearer '+idi);
        req.setHeader('Content-Type', 'application/json');
        String domainUrl=URL.getOrgDomainURL().toExternalForm();
        req.setEndpoint(domainUrl+endpointURL);
        req.setMethod('GET');
        List<String> customLables = new List<String>();
        Http h = new Http();
        HttpResponse res = h.send(req);
        string responseBody = res.getBody();
System.debug(res.getBody());        
        CustomLabelWrapper completeWrapper = (CustomLabelWrapper)System.JSON.deserialize(responseBody, CustomLabelWrapper.class);
        
        Map<String,String>clMap =New Map<String,String>();
            for(CustomLabelWrapper.cls_records rec: completeWrapper.records){
            String cname= rec.Name;
            customLables.add(cname);
            system.debug(cname);
            clMap.put(cname,cname);    
        }
       return clMap;
    }
   
    public class SessionId {
        public string sessionId;
    }
}