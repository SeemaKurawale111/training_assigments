@isTest
public class EvaluationTest1_ExtensionTest
{
    static testMethod void EvaluationTest1_Extension_Test1()
    {
        Account acc = new Account(Name ='Test Account ', Email__c = 'Account_Test@gmail.com', Website = 'www.test.org');
        insert acc ;
        Account insertedAcc = [Select Name, Email__c, Website From Account];
        system.debug(insertedAcc );
        
        List<Contact> contactList = new List<Contact>();
        Contact cont1 = new Contact(LastName ='Test Contact 1', Email = 'Contact_Test@gmail.com', Accountid = acc.id);  
        contactList.add(cont1 );       
        insert contactList ;
        Contact insertedCont = [Select LastName, Email, Accountid From Contact Where Accountid =: acc.id];
        system.debug(insertedCont );
        
        
        
        PageReference pageRef = Page.EvaluationTest1_Contacts;
        pageRef.getParameters().put('id', acc.id);
        Test.setCurrentPage(pageRef);
        
        ApexPages.StandardController sc = new ApexPages.StandardController(insertedCont);
        EvaluationTest1_Extension ext = new EvaluationTest1_Extension(sc); 
        
        /*     
        ApexPages.StandardController stdController ;                                 
        EvaluationTest1_Extension ext = new EvaluationTest1_Extension(stdController); 
        PageReference pageRef = Page.EvaluationTest1_Contacts;
        Test.setCurrentPage(pageRef);*/
        
        test.startTest();
        ext.addContact();
        ext.newContactList.get(0).LastName='Test';
        ext.saveContact();
        test.stopTest();
        
        System.assert( ext.newContactList.get(0).Id != null );
        System.assertEquals(acc.id , ext.newContactList.get(0).Accountid, 'Account Id is empty' );
        
        List<Contact> contacts = [SELECT Id, Name, Email, Contact.Accountid
                                      FROM Contact
                                      WHERE AccountId =: acc.id ]; 
        system.debug(contacts);
        system.assertEquals(2, contacts.size() );
     }   
 
}