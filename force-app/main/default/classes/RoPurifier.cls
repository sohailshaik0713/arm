public Class RoPurifier{
     private String Model;
     private String Capacity;
     private String Volt;
     private String Filter;
     private String Pump;
     
    //public return_type metdName(dt  n1, dt n2…..){
    //    create
    //}
    public void input(String RPcomp, String RPcapacity,String RPVolt,String RPFilter,String RPPump){
     Model = RPcomp;
     Capacity = RPcapacity;
     Volt = RPVolt;
     Filter = RPFilter;
     Pump = RPPump;
    }

    //public return_type metdName(dt  n1, dt n2…..){
    //    process
    //}
    public void output(){
     System.debug('RoPurifier brand is ' + Model);
     System.debug('RoPurifier capacity is ' + Capacity);
     System.debug('RoPurifier Volt is ' + Volt);
     System.debug('RoPurifier Filter is ' + Filter);
     System.debug('RoPurifier Pump is ' + Pump);
    }
     
}