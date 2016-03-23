public class Contact_Count
{

 public void question3()
 {
 list<Contact> contactlist = new list<Contact>([SELECT Name, Account.name FROM contact WHERE Account.name LIKE 'Eternus']); 
 system.debug(contactlist);
 integer count = contactlist.size();
 Account a=[Select id from Account where Name='ETERNUS'];
 a.Contact_Count__c=count;
 update a;
 
 }
     
}