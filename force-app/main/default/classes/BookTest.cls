@isTest
public class BookTest {
    public static @isTest void anyName(){
        Book__c book1 = new Book__c();
        book1.Name = 'To kill a mockingbird';
        book1.Author__c = 'Harper Lee';
        book1.Edition__c = 1;
        book1.Price__c = 10;
        System.debug('Book1 details are : ' + book1);
        
        Book__c book2 = new Book__c();
        book2.Name = 'Pride and Prejudice';
        book2.Author__c = 'Jane Austen';
        book2.Edition__c = 2;
        book2.Price__c = 20;
        System.debug('Book2 details are : ' + book2);
        
		Book__c book3 = new Book__c();
        book3.Name = 'One hundred years of solitude';
        book3.Author__c = 'Gabriel Garcià';
        book3.Edition__c = 3;
        book3.Price__c = 30;
        System.debug('Book3 details are : ' + book3);
                
        Book__c book4 = new Book__c();
        book4.Name = 'Don Quixote';
        book4.Author__c = 'Miguel De Cervantes';
        book4.Edition__c = 4;
        book4.Price__c = 40;
        System.debug('Book4 details are : ' + book4);
        
        Book__c book5 = new Book__c();
        book5.Name = 'Nineteen Eighty Four';
        book5.Author__c = 'George Orwell';
        book5.Edition__c = 5;
        book5.Price__c = 50;
        System.debug('Book5 details are : ' + book5);
        
        insert book1;
        insert book2;
        insert book3;
        insert book4;
        insert book5;
        
        /*List<Book__c> my_books = [select Name,Author__c,Edition__c,Price__c from Book__c];
        System.debug('Book 1 to Book 5 details are : ' + my_books);*/
        
        List<Book__c> books = new List<Book__c>();
        
        Book__c book6 = new Book__c();
        book6.Name ='Great Expectations';
        book6.Author__c = 'Charles Dickens';
        book6.Edition__c = 6;
        book6.Price__c = 60;
        books.add(book6);
        
        Book__c book7 = new Book__c();
        book7.Name ='Catch 22';
        book7.Author__c = 'Joseph Heller';
        book7.Edition__c = 7;
        book7.Price__c = 70;
        books.add(book7);
        
        Book__c book8 = new Book__c();
        book8.Name ='Frankenstein';
        book8.Author__c = 'Mary Shelley';
        book8.Edition__c = 8;
        book8.Price__c = 80;
        books.add(book8);
        
        Book__c book9 = new Book__c();
        book9.Name ='A tree grows in Brooklyn';
        book9.Author__c = 'Betty Smith';
        book9.Edition__c = 9;
        book9.Price__c = 90;
        books.add(book9);
        
        Book__c book10 = new Book__c();
        book10.Name ='The Color Purple';
        book10.Author__c = 'Alice Walker';
        book10.Edition__c = 10;
        book10.Price__c = 100;
        books.add(book10);
        
        insert books;
        //fetch all records
        List<Book__c> my_books = [select Name,Author__c,Edition__c,Price__c from Book__c];
        System.debug('Book 6 to Book 10 details are : ' + my_books);
        
        for(Book__c my_book : my_books){
            System.debug('Each book records are : ' +  my_book);//Access each book record
        }
       
        for(Book__c your_book : my_books){
            List<Book__c> my_books_each_field = new List<Book__c>();
            System.debug('displays book with field values separately');
            System.debug('Book Name is : ' + your_book.name);
            System.debug('Book Author is : ' + your_book.Author__c);
            your_book.author__c = 'Dr ' + your_book.Author__c;
            System.debug('Book Edition is : ' + your_book.Edition__c);
            System.debug('Book Price is : ' + your_book.Price__c);
            your_book.Price__c += 10;
            
            
        }
        //update  my_books;
        //upsert my_books;
        //delete new_my_books using try catch;
        /*try{List<Book__c> new_my_books = [select Name,Author__c,Edition__c,Price__c from Book__c];
           	delete new_my_books;	}
        catch(Exception e){
            System.debug('Delete failed');
        }
        
        //Undelete new_my_books_recycle using try catch;
        try{
        List<Book__c> new_my_books_recycle = [select Name,Author__c,Edition__c,Price__c from Book__c where IsDeleted = true ALL ROWS];
            undelete new_my_books_recycle; }
        catch(Exception e){
          System.debug('Undelete failed');  
        }*/
		
        //Printing new version of records
        for(Book__c new_book : my_books){
            List<Book__c> my_books_each_field = new List<Book__c>();
            System.debug('displays book with field values separately');
            System.debug('Book Name is : ' + new_book.name);
            System.debug('Book Author is : ' + new_book.Author__c);
            System.debug('Book Edition is : ' + new_book.Edition__c);
            System.debug('Book Price is : ' + new_book.Price__c);
            
            
            
        }
        
    }

}