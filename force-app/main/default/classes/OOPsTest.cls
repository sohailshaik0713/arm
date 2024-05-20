@isTest
public class OOPsTest {
    public @isTest static void anyName(){
        //create an object for TopLevelClass
    	TopLevelClass tlc_obj = new TopLevelClass(); 
        //tlc_obj.TopLevelClass.InnerClassMtd;
        //Create an object for InnerClass 
        TopLevelClass.InnerClass inc_obj = new TopLevelClass.InnerClass();
        inc_obj.InnerClassMtd();
        //TopLevelClass.InnerClass.InnerClassStaticMtd;
         //TopLevelInterface tli_obj = new TopLevelInterface();
         //tli_obj.
    }

}