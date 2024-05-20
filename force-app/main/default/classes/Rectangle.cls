//Business Class
public class Rectangle {
    //Data Members
    Integer length;
    Integer breadth;
    
    //DC
    public Rectangle(){
        length = 0;
        breadth = 0;
    }
    //PC
    public Rectangle(Integer length,Integer breadth){
        this.length = length; 
        this.breadth = breadth;
    }
    //Input
    public void setValues(Integer length,Integer breadth){
        this.length = length;
        this.breadth = breadth;
    }
    //Action
    //area
    public Integer calcArea(){
        Integer area = length * breadth;
        return area;
    }
    //perimeter
    public Integer calcPermeter(){
        Integer perimeter = 2 * (length + breadth);
        return perimeter; 
    }
    //Output
    public void getvalues(){
        System.debug('Length = ' + length);
        System.debug('Breadth = ' + breadth);
    }
    
}