@isTest
private class TemperatureTest {
    
    @isTest
    static void testCelsiusToFahrenheit() {
        // Test case: Convert 0°C to Fahrenheit
        Decimal celsius = 0;
        Decimal expectedFahrenheit = 32;
        Decimal actualFahrenheit = Temperature.celsiusToFahrenheit(celsius);
        System.assertEquals(expectedFahrenheit, actualFahrenheit, '0°C should be 32°F');
        
        // Test case: Convert 100°C to Fahrenheit
        celsius = 100;
        expectedFahrenheit = 212;
        actualFahrenheit = Temperature.celsiusToFahrenheit(celsius);
        System.assertEquals(expectedFahrenheit, actualFahrenheit, '100°C should be 212°F');
    }
    
    @isTest
    static void testFahrenheitToCelsius() {
        // Test case: Convert 32°F to Celsius
        Decimal fahrenheit = 32;
        Decimal expectedCelsius = 0;
        Decimal actualCelsius = Temperature.fahrenheitToCelsius(fahrenheit);
        System.assertEquals(expectedCelsius, actualCelsius, '32°F should be 0°C');
        
        // Test case: Convert 212°F to Celsius
        fahrenheit = 212;
        expectedCelsius = 100;
        actualCelsius = Temperature.fahrenheitToCelsius(fahrenheit);
        System.assertEquals(expectedCelsius, actualCelsius, '212°F should be 100°C');
    }
    
    @isTest
    static void testEdgeCases() {
        // Test case: Convert -40°C to Fahrenheit
        Decimal celsius = -40;
        Decimal expectedFahrenheit = -40;
        Decimal actualFahrenheit = Temperature.celsiusToFahrenheit(celsius);
        System.assertEquals(expectedFahrenheit, actualFahrenheit, '-40°C should be -40°F');
        
        // Test case: Convert -40°F to Celsius
        Decimal fahrenheit = -40;
        Decimal expectedCelsius = -40;
        Decimal actualCelsius = Temperature.fahrenheitToCelsius(fahrenheit);
        System.assertEquals(expectedCelsius, actualCelsius, '-40°F should be -40°C');
    }
}