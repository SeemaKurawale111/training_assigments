@isTest
public class DomainTriggerTest 
{
    static testMethod void DomainTriggerTestMethod()
    {
    	List<Contact> contactobj = new List<Contact>{};
    	for(Integer i = 1; i < 10; i++)
        {
        	Contact c = new Contact(LastName ='Test Contact ' + i, Email = 'test@gmail.com');
        	contactobj.add(c);
    	}
        List<Account> accountobj = new List<Account>{};
    	for(Integer i = 1; i < 10; i++)
        {
        	Account a = new Account(Name ='Test Account ' + i, Domain_Name__c = 'gmail.com');
        	accountobj.add(a);
    	}
        
        
    insert accountobj;      
    test.startTest();
    insert contactobj;
    test.stopTest();

    
    List<Contact> insertedContacts = [SELECT Id, Name, Email, Contact.Accountid
                                      FROM Contact
                                      WHERE Id IN :contactobj];
    Map<Id,Account> insertedAccounts = new Map<Id,Account>([SELECT Id, Domain_Name__c
                                      					FROM Account
                                      					WHERE Id IN :accountobj]);

 	for(Contact c : insertedContacts)
    {    
        System.assertEquals(true,insertedAccounts.containsKey(c.Accountid),'Error');
    }
   
  }   
}