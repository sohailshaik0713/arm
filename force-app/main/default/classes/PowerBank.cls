//Business Class
public class PowerBank{
    private String Brand;
    private Integer Quantity;
    private Integer Price;
    private Decimal Discount;
    private Integer Charging_Ports;
    
    //public return_type metdName(dt n1,dt n2....){
    //create
    //}
    public void input(String PBcomp,Integer PBquantity,Integer PBprice,Decimal PBdiscount,Integer PBport){
     Brand = PBcomp;
     Quantity = PBquantity;
     Price = PBprice;
     Discount = PBdiscount;
     Charging_Ports = PBport;
    }
    //public return_type metdName(dt n1,dt n2....){
    //Process
    //}
    public void output(){
     System.debug('PowerBank brand is ' + Brand);
     System.debug('PowerBank quantity is ' + Quantity);
     System.debug('PowerBank price is ' + Price);
     System.debug('PowerBank discount is ' + Discount);
     System.debug('PowerBank Ports are ' + Charging_Ports);
     }
}