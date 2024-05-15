public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numberOfContacts, String lastName) {
        List<Contact> contacts = new List<Contact>();
        
        for (Integer i = 1; i <= numberOfContacts; i++) {
            Contact newContact = new Contact(
                FirstName = 'Test ' + String.valueOf(i),
                LastName = lastName
            );
            contacts.add(newContact);
        }
        
        return contacts;
    }
}