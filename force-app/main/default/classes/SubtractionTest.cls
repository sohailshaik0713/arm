@IsTest
public class SubtractionTest {
    // Test method to verify the subtract method
    @IsTest
    public static void testSubtract() {
        // Test with positive numbers
        Integer result = Subtraction.subtract(5, 3);
        System.assertEquals(2, result, '5 - 3 should be 2');
        
        // Test with a negative number
        result = Subtraction.subtract(-2, 3);
        System.assertEquals(-5, result, '-2 - 3 should be -5');
        
        // Test with zero
        result = Subtraction.subtract(0, 5);
        System.assertEquals(-5, result, '0 - 5 should be -5');
        
        // Test with both negative numbers
        result = Subtraction.subtract(-5, -3);
        System.assertEquals(-2, result, '-5 - (-3) should be -2');
        
        // Test with one
        result = Subtraction.subtract(7, 1);
        System.assertEquals(6, result, '7 - 1 should be 6');
    }
}