trigger AddressVerificationSystemTrigger on EFT_Transaction_Status__c (before insert) 
{
    AddressVerificationSystemHandler AVH = new AddressVerificationSystemHandler();
    if(trigger.isBefore)
    {
        if(trigger.isInsert)
        {
           AVH.onAfterInsert(trigger.new);  
        }
    }
   
}