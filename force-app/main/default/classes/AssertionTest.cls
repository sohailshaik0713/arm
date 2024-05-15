@isTest
public class AssertionTest {
    @isTest public static void anyName(){
        Integer num = 34;
        Integer den = 0;
        Integer div;
        System.assert(den != 0, 'Cannot divide by your knowledge'); //true-continue if fails-stop
        div = num/den;
        System.debug('Result of division is : ' + div );
        
    }

}