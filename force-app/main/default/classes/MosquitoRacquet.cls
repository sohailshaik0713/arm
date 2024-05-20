public class MosquitoRacquet{
    private String Brand;
    private String Colour;
    private Integer Size;
    private String Material;
    private Integer Weight;
    
    //public return_type metdName(dt  n1, dt n2…..){
    //    create
    //}
    public void input(String MRcomp,String MRcolour,Integer MRsize,String MRmaterial,Integer MRweight){
     Brand = MRcomp;
     Colour = MRcolour;
     Size = MRsize;
     Material = MRmaterial;
     Weight = MRweight; 
    }

    //public return_type metdName(dt  n1, dt n2…..){
    //    process
    //}
    public void output(){
     System.debug('Company name is ' + Brand);
     System.debug('Colour is ' + Colour);
     System.debug('Racquet size is ' + Size);
     System.debug('Material made of ' + Material);
     System.debug('Racquet net weight is ' + Weight);
    }



}