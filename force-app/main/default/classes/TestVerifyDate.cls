@isTest
private class TestVerifyDate {

    @isTest
    static void testCheckDatesWithin30Days() {
        // Test when date2 is within 30 days of date1
        Date date1 = Date.today();
        Date date2 = date1.addDays(25); // Within 30 days

        Date result = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, result, 'Expected date2 within 30 days');

        // Test when date2 is not within 30 days of date1
        date2 = date1.addDays(35); // Beyond 30 days

        result = VerifyDate.CheckDates(date1, date2);
        Date expectedDate = VerifyDate.SetEndOfMonthDate(date1);
        System.assertEquals(expectedDate, result, 'Expected end of month date');
    }

    @isTest
    static void testDateWithin30Days() {
        // Test when date2 is within 30 days of date1
        Date date1 = Date.today();
        Date date2 = date1.addDays(25); // Within 30 days

        Boolean result = VerifyDate.DateWithin30Days(date1, date2);
        System.assertEquals(true, result, 'Expected date2 within 30 days');

        // Test when date2 is not within 30 days of date1
        date2 = date1.addDays(35); // Beyond 30 days

        result = VerifyDate.DateWithin30Days(date1, date2);
        System.assertEquals(false, result, 'Expected date2 beyond 30 days');
    }

    @isTest
    static void testSetEndOfMonthDate() {
        Date date1 = Date.today();

        Date endOfMonth = VerifyDate.SetEndOfMonthDate(date1);
        Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
        Date expectedEndOfMonth = Date.newInstance(date1.year(), date1.month(), totalDays);

        System.assertEquals(expectedEndOfMonth, endOfMonth, 'Expected end of month date');
    }
}