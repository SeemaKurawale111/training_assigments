@isTest
public class AccountExtensionTest 
{
	static testMethod void AccountExtensionTestMethod()
    {
       List<Invoice_Statement__c> invoiceobj = new List<Invoice_Statement__c>{};
    	for(Integer i = 1; i < 10; i++)
        {
        	Invoice_Statement__c inv = new Invoice_Statement__c( City__c='Pune',Company_Name__c='IBM', Name__c ='Test Contact ' + i, Email_Address__c = 'test@gmail.com', Phone__c='123456789'+i, Street_Name__c='Netaji Nagar');
        	invoiceobj.add(inv);
    	}
        List<Account> accountobj = new List<Account>{};
    	for(Integer i = 1; i < 10; i++)
        {
        	Account a = new Account(Name ='Test Account ' + i, Domain_Name__c = 'gmail.com');
        	accountobj.add(a);
    	}
        
    }   
}