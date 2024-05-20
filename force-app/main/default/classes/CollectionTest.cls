@isTest
public class CollectionTest {
    public static @isTest void anyName(){
        //Collections
        //List --- Class
        //create a list
        //List<DtaType> coll_name = new List<DtaType>;
        //add elements to a list - coll_name.add(DtaType)
        //List<Integer> stud_marks = new List<Integer>();
        List<String> stud_names = new List<String>();
        stud_names.add('Tiju');
        stud_names.add('Akhil');
        stud_names.add('Mansoor');
        stud_names.add('Rajsekar');
        stud_names.add('Saurav');
        stud_names.add('Akhil');
        //display --- Traverse
        System.debug('Student Names before deleting : ' + stud_names);
        //delete elements from a list
        try{
            stud_names.remove(13);
            //traverse a list
            //display
            System.debug('Student Names after deleting : ' + stud_names);
        }
        catch(Exception e){
            System.debug('Cannot delete the index');
        }
        //Set
        //Create a set
        //Set<Datatype> coll_name = new Set<Datatype>; 
        Set<String> hotel_names = new Set<String>();
        Set<DateTime> class_schedules = new Set<DateTime>();
        //add a elements to a set
        hotel_names.add('Paradise');
        hotel_names.add('K555');
        hotel_names.add('Shadab');
        hotel_names.add('Hilton');
        hotel_names.add('Gismat');
        hotel_names.add('Paradise');
        //display
        System.debug('Hotel names before delete : ' + hotel_names);
        //delete a elements from a set
        try{
            hotel_names.remove('gfgh');
            //traverse a set
            //display
            
        }
        catch(Exception error){
            System.debug('Cannot delete the value');
        }
        System.debug('Hotel names after delete : ' + hotel_names);
        //Map
        //Create a map
        //Map<key_dt,value_dt> coll_name = new Map<key_dt,value_dt>();
        Map<String,Integer> country_code = new  Map<String,Integer>();
        //add a elements to a map
        country_code.put('India',91);
        country_code.put('UK',4);
        country_code.put('UAE',971);
        country_code.put('US',1);
        country_code.put('Australia',6);
        country_code.put('UAE',143);                                                                                                                
        System.debug(' Countries with codes before delete : ' +  country_code);  
        //display
        try{
        country_code.remove('UAE');
         //traverse a map
         System.debug(' Countries with codes after delete : ' +  country_code);          
        //delete a elements from a map
        }
         catch(Exception e){
            System.debug('Cannot delete the key');
        }
        System.debug('Each name separately');
        //Display each student name
        for( String stud_name : stud_names ){
            System.debug('Student name : ' + stud_name);
        }
       
       
        
       
    }
}