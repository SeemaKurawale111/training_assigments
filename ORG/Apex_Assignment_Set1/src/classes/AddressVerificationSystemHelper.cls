public class AddressVerificationSystemHelper 
{
   public void createCase(List<EFT_Transaction_Status__c> eftList) 
    {
        List<EFT_Transaction_Status__c> elist = new List<EFT_Transaction_Status__c> ([Select id, salesHeader__r.Name, salesheader__r.Account__c, salesheader__r.Account__r.name, salesheader__r.Contact__c, Transaction_Status__c, Transaction_Date__c 
            From EFT_Transaction_Status__c e  
            Where Method_Name__c = 'Credit Card Address Verify'and Transaction_Status__c= 'Declined'AND SalesHeader__r.Status__c = 'Open'  ]);
        List<Case> caselist = new List<Case>();
        
        for(EFT_Transaction_Status__c e : eftList )
     {
   			 	case c = new case();
                c.Priority = 'High';
                c.Origin = 'Internal';
                c.type = 'Address Did Not Verify';
                c.Subject = 'Testing AVS';
                c.Reason = 'Address Did Not Verify';
                c.Open_Sales_Order__c = e.salesheader__c;
                c.status = 'New';
                c.AccountId=e.salesheader__r.account__C; 
                c.ContactId = e.salesheader__r.Contact__c;
                c.order_date__c = e.Transaction_Date__c;
                c.Transaction_Status__c = e.Transaction_Status__c;
         		caselist.add(c); 
         		system.debug(c);
    }
   insert caselist;
   system.debug(caselist);
  }   
}