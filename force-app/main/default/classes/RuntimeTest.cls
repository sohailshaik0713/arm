@isTest
public class RuntimeTest {
    public static testMethod void anyName(){
        Integer num = 34;
        Integer den = 0;
        Integer div;
        Integer sum;
        
        try{
            div = num/den;
            System.debug('The result of the division is : ' + div);            
        }
        catch(Exception e) {
            
            System.debug('Cannot divide with  number');
            
        }
        sum = num + den;
        System.debug('The result of the addition is : ' + sum);
        
        integer mul = num * den;
        System.debug('The result of the multi is : ' + mul);
        
        Integer prod;
        prod = num * den;
        System.debug('The result of the product is : ' + prod);
        Integer diff;
        diff = num - den;
        System.debug('The result of the substraction is : ' + diff);
        
    }
    
}