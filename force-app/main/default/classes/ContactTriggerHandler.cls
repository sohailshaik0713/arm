public class ContactTriggerHandler {
    public static void createdRecord(List<Contact> conList){
        for(Contact con : conlist){
            if(con.Email == null || con.Email == ''){
                con.Email.AddError('Please Enter Email');
            }
            if(con.Phone == null || con.Phone == ''){
                con.Phone.AddError('Please Enter Phone');
            } 
        } //end for loop
    } //end for createdRecords

} //end for ContactTriggerHandler