public without sharing class MetadataClass {
 
    @AuraEnabled(cacheable=true)
    public static List<ApexClass> metadataMethod() {
        return [SELECT Id, Name, Status, ApiVersion, CreatedDate FROM ApexClass limit 15];
    }
 
    @AuraEnabled(cacheable=true)
    public static Map<String, String> getCustomLabelsList() {
        Map<String, String> labelMap = new Map<String, String>();
        labelMap.put('Demo', System.Label.Demo);
        labelMap.put('Demo2', System.Label.Demo2);
        // Add more labels as needed
        return labelMap;
    }
 
    
}