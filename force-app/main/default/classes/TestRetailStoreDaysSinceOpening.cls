@isTest
private class TestRetailStoreDaysSinceOpening {
    
    @isTest
    static void testUpdateDaysSinceOpening() {
        // Create test data
        Retail_Store__c testStore = new Retail_Store__c(Opening_Date__c = Date.newInstance(2023, 1, 1));
        insert testStore;
        
        List<Retail_Store__c> storesToUpdate = new List<Retail_Store__c>();
        storesToUpdate.add(testStore);
        
        Test.startTest();
        // Call the method to update days since opening
        RetailStoreDaysSinceOpening.updateDaysSinceOpening(storesToUpdate);
        Test.stopTest();
        
        // Retrieve the updated store
        Retail_Store__c updatedStore = storesToUpdate[0];
        
        // Assert that the Days Since Opening field is updated correctly in memory
        Integer expectedDays = Date.newInstance(2023, 1, 1).daysBetween(Date.today());
        System.assertEquals(expectedDays, updatedStore.Days_Since_Opening__c, 'Days Since Opening field is incorrect');
    }
}