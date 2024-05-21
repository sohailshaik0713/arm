@isTest
public class AdditionTest {
    // Test method for positive integers
    @isTest
    static void testAdditionPositive() {
        // Arrange
        Addition addition = new Addition();
        
        // Act
        Integer result = addition.add(3, 5);
        
        // Assert
        System.assertEquals(8, result, 'Addition of 3 and 5 should be 8');
    }
    
    // Test method for negative integers
    @isTest
    static void testAdditionNegative() {
        // Arrange
        Addition addition = new Addition();
        
        // Act
        Integer result = addition.add(-3, -5);
        
        // Assert
        System.assertEquals(-8, result, 'Addition of -3 and -5 should be -8');
    }
    
    // Test method for mixed integers
    @isTest
    static void testAdditionMixed() {
        // Arrange
        Addition addition = new Addition();
        
        // Act
        Integer result = addition.add(3, -5);
        
        // Assert
        System.assertEquals(-2, result, 'Addition of 3 and -5 should be -2');
    }
    
    // Test method for adding zero
    @isTest
    static void testAdditionZero() {
        // Arrange
        Addition addition = new Addition();
        
        // Act
        Integer result = addition.add(3, 0);
        
        // Assert
        System.assertEquals(3, result, 'Addition of 3 and 0 should be 3');
    }
}