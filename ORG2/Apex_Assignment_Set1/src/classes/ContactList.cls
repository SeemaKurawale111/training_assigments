/* public class ContactList
{    
    public List<Account> acct {get;set;}
    public ContactList()
    {
        acct = [SELECT Name, (SELECT Name, Email FROM Contacts) FROM Account];
    }    
} */

public class ContactList{
  public Account getAccount() {
  return [select id, name, (select id, firstname, lastname from Contacts) from Account where id =:System.currentPageReference().getParameters().get('id')];
  }
}