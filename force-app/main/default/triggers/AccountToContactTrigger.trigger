trigger AccountToContactTrigger on Account (after insert) {
     List<Contact> conList = new List<Contact>();
     for(Account a : Trigger.New){
           Contact c = new Contact();
            c.AccountId = a.Id;
            c.LastName = a.Name;
            c.Phone = a.Phone;
            //c.Email = 'Sony@gmail.com';
            c.Fax = a.Fax;
            //c.Title = 'Developer';
            conList.add(c);
        }
            insert conList;
}