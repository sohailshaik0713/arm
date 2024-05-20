public class LeadTriggerHandler {
    public static void fieldsRequired(List<Lead> leadList){
        for(Lead l : leadList){
            if(l.Phone == null || l.Phone == ''){
            	l.Phone.addError('Please Enter Phone Number'); 
            }
            else if(l.Fax == null || l.Fax == ''){
                l.Fax.addError('Please Enter Fax');
            }
            else if(l.Email == null || l.Email == ''){
                l.Email.addError('Please Enter Email');
            }
        }
    }

}