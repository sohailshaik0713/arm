public with sharing class CustomLabelController {
    public class records {
        public String Name;		
    }    
    public class DynamicCustomLabels {
        public List<records> records;
    }
    
    @AuraEnabled(cacheable=true)
    public static List<String> getAllCustomLabels() {
        List<String> customLabels = new List<String>();       
        DynamicCustomLabels completeWrapper = findAllCustomLabels();
        for (records rec : completeWrapper.records) {
            customLabels.add(rec.Name);
        }
		System.debug(customLabels);        
        return customLabels;
    }
    public static DynamicCustomLabels findAllCustomLabels(){
        string endpointURL='/services/data/v59.0/tooling/query/?q=Select+Name+from+CustomLabel';
        HttpRequest req = new HttpRequest();
        req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionID());
        req.setHeader('Content-Type', 'application/json');
        String domainUrl=URL.getOrgDomainURL().toExternalForm();
        req.setEndpoint(domainUrl+endpointURL);
        req.setMethod('GET');        
        Http h = new Http();
        HttpResponse res = h.send(req);
        string responseBody = res.getBody();        
        DynamicCustomLabels completeWrapper = (DynamicCustomLabels)System.JSON.deserialize(responseBody, DynamicCustomLabels.class);      
        return completeWrapper;
    }
}