public class PetrolStation{
 private String Company;
 private String Fuel_Types;
 private String Payment;
 private String Cafe;
 private String Enquiry;

    // public return_type metdName(dt n1, dt n2…..){
    //    create
    //}
    public void input (String PScomp, String PSfuel, String PSamount, String PSirani, String PSomplaint){
        Company = PScomp;
        Fuel_Types = PSfuel;
        Payment = PSamount;
        Cafe = PSirani;
        Enquiry = PSomplaint;
    }

    //public return_type metdName(dt n1, dt n2…..){
    //    process
    //}
    public void output(){
        system.debug('Company name is ' + Company );
        system.debug('Fuel uses is ' + Fuel_Types);
        system.debug('Payment done by ' + Payment);
        system.debug('Cafe name is ' + Cafe);
        system.debug('Enquiry is done about ' + Enquiry);
    } 
}