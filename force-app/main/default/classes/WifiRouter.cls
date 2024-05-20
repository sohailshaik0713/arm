public Class WifiRouter{
    private String Brand;
    private Integer Speed;
    private String Internet;
    private String Band;
    private String Range;

    //public return_type metdName(dt  n1, dt n2…..){
    //    create
    //}
    public void input(String WRcomp,Integer WRspeed,String WRnet,String WRband,String WRrange){
     Brand = WRcomp;
     Speed = WRspeed;
     Internet = WRnet;
     Band = WRband;
     Range = WRrange;
    }

    //public return_type metdName(dt  n1, dt n2…..){
    //    process
    //}
    public void output(){
     System.debug('Wifi name is ' + Brand);
     System.debug('Router fast is ' + Speed);
     System.debug('Net service provide by ' + Internet);
     System.debug('Type of band is ' + Band);
     System.debug('Range of wifi is ' + Range);
    }

}