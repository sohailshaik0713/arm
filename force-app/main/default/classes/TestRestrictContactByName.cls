@isTest
private class TestRestrictContactByName {
    // Test case for valid last name
    @isTest
    static void testValidLastName() {
        Contact validContact = new Contact(LastName = 'Smith');
        Test.startTest();
        insert validContact;
        Test.stopTest();
        // Add assertions here if needed
    }

    // Test case for invalid last name
    @isTest
    static void testInvalidLastName() {
        Contact invalidContact = new Contact(LastName = 'INVALIDNAME');
        Test.startTest();
        try {
            insert invalidContact;
        } catch (DmlException e) {
            // Ensure that the error message is as expected
            System.assert(e.getMessage().contains('The Last Name "INVALIDNAME" is not allowed for DML'));
        }
        Test.stopTest();
    }
}