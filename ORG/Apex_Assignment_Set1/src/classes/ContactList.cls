public class ContactList
{   
    public void ContactListQuest1()
    {
       List<Contact> ListOfcontact = [Select Id, Name, Email, Phone from Contact];
       for(Contact c : ListOfcontact )
       {
           system.debug(c);
       }
    }    
}