@isTest
public class ConversionTest {
    public static @isTest void anyName(){
        TemperatureConversionClass obj = new TemperatureConversionClass();
        Decimal c = -40;
        Decimal f;
        f = TemperatureConversionClass.convert(c);
        System.assert(f == -40 , 'Wrong Conversion');
        //System.assertEquals(-40, f, 'Conversion Wrong');
        System.debug('The value of fahrenheit is : ' + f);
        
    }

}