public class RetailStoreDaysSinceOpening {
    
    public static void updateDaysSinceOpening(List<Retail_Store__c> storesToUpdate) {
        for (Retail_Store__c store : storesToUpdate) {
            //Integer daysSinceOpening = store.Opening_Date__c.daysBetween(Date.Today());
            Integer daysSinceOpening = Math.abs(Date.today().daysBetween(store.Opening_Date__c));
            store.Days_Since_Opening__c = daysSinceOpening;
        }
    }
}