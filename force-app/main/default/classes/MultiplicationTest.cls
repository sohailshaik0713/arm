@IsTest
public class MultiplicationTest {
    // Test method to verify the multiply method
    @IsTest
    public static void testMultiply() {
        // Test with positive numbers
        Integer result = Multiplication.multiply(2, 3);
        System.assertEquals(6, result, '2 * 3 should be 6');
        
        // Test with a negative number
        result = Multiplication.multiply(-2, 3);
        System.assertEquals(-6, result, '-2 * 3 should be -6');
        
        // Test with zero
        result = Multiplication.multiply(0, 5);
        System.assertEquals(0, result, '0 * 5 should be 0');
        
        // Test with both negative numbers
        result = Multiplication.multiply(-2, -3);
        System.assertEquals(6, result, '-2 * -3 should be 6');
        
        // Test with one
        result = Multiplication.multiply(1, 7);
        System.assertEquals(7, result, '1 * 7 should be 7');
    }
}