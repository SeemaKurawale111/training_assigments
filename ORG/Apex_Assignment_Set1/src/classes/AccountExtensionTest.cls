@isTest
public class AccountExtensionTest 
{
    static testMethod void AccountExtensionTestMethod()
    {
         List<Account> accountList = new List<Account>{};
        for(Integer i = 0; i < 10; i++)
        {
            Account a = new Account(Name ='Test Account ' + i, Email__c = 'Account_Test@gmail.com', Website = 'www.test.org');
            accountList.add(a);
        }
        insert accountList ; 
        system.debug(accountList);
        system.debug(accountList.size() );
        
        List<Contact> contactList= new List<Contact>{};
        for(Integer i = 0; i < 10; i++)
        {
            Contact c = new Contact(LastName ='Test Contact ' + i, Email = 'Contact_Test@gmail.com', Accountid = accountList.get(i).id);
            contactList.add(c);
        }     
        insert contactList;
        system.debug(contactList);
        system.debug(contactList.size() ); 
         
  

    ApexPages.StandardController stdController ;                                 
    AccountExtension accExt = new AccountExtension(stdController); 
/*    
    accExt.getAccountList();
    system.assertequals(10,accExt.accountList.size());   11
       
    accExt.getContactList();
    system.assertequals(10,accExt.contactList.size());    0
*/ 
    accExt.searchString ='Test Account 1';
    accExt.search();
    system.assertequals(1,accExt.searchAccountList.size());
    
    accExt.searchstring='a';       
    accExt.search();
    List<Apexpages.Message> msg = ApexPages.getMessages();
    boolean b = false;
    for(Apexpages.Message msgs:msg)
    {
       if (msgs.getDetail().contains('Input atleast 3 character'))
                     b = true;
    }
    system.assert(b);
    
    accExt.clear();
    system.assertequals(0,accExt.searchAccountList.size());
    
    accExt.deleteAll();
    system.assertequals(0,accExt.deleteContact.size());
    

   
}
}