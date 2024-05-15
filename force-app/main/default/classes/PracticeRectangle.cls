public class PracticeRectangle {
    //dm
    //Object Variables
    private String name;
    private Integer length;
    private Integer breadth;
    private static Integer count = 0; // class variable
    
    //mm
    //dc
    public PracticeRectangle(){
        name = 'No Name';
        length = 0;
        breadth = 0;
        count++;
        //count += 1;
        //count = count + 1;
        System.debug(name + ',' + length + ', ' + breadth + ', Count : ' + count);
    }
    
    //pc
    //                       Local variables
    public PracticeRectangle(String name,Integer no,Integer num){
        name = name;
        length = no;
        breadth = num;
        count++;
        System.debug(name + ',' + length + ',' + breadth + ', Count : ' + count);
    } 
    public  static  void getcount(){
        System.debug('The number of objects created are : ' + count);
    }

}