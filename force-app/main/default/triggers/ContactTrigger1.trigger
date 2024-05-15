trigger ContactTrigger1 on Contact (before insert,before update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        for(Contact c : Trigger.New){
            if(c.Phone == null || c.Phone == ''){
                c.Phone.addError('Please Enter Phone');
            }
            else if(c.Email == null || c.Email == ''){
                c.Email.addError('Please Enter Email');
            }
            else if(c.Title == null || c.Title == ''){
                c.Title.addError('Please Enter Title');
            }
        }
    }

}