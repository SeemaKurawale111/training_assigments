public class AddressVerificationSystemHandler 
{
    public void onAfterInsert(List<EFT_Transaction_Status__c> eftList)
    {	
        new AddressVerificationSystemHelper().createCase(eftList);
    }
}