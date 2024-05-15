@isTest
public class AsyncTest {
    public static @isTest void anyName(){
        System.debug('Statement 11');
        System.debug('Statement 22');
        //DemoClass dc_obj = new DemoClass(); // Synchronus Execution
        //dc_obj.someMethod();//calling somemethod in democlass by obj.metdName
        //DemoClass.someMethod(); //className.staticmtdName for Asynchronus Execution
        System.debug('Statement 33');
        System.debug('Statement 44');
        System.debug('Statement 55');
        System.debug('Aipaye');
    }

}