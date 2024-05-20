//Business Class
public class BusTicket {
    private String company;
    private String bus_time;
    private String boarding_info;
    private String amenities;
    private String amount;
    
    // public return_type metdName(dt n1,dt n2,dt n3){
    //    create
    //}
    public void input(String bcomp,String btime,String bdepart,String bamenities,String bamount){
     company = bcomp;
     bus_time = btime;
     boarding_info = bdepart;
     amenities = bamenities;
     amount = bamount;    
    }
    //public return_type metdName(dt n1,dt n2,dt n3){
    //    process
    //}
    public void output(){
     System.debug('Travels name is ' + company);
     System.debug('Bus time info is ' + bus_time);
     System.debug('Boarding point is ' + boarding_info);
     System.debug('Amenity included is ' + amenities);
     System.debug('Amount for ticket is ' + amount);    
    }
}