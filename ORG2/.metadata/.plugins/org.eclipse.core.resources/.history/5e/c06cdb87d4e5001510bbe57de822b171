public class DomainTriggerHandler 
{
    public void onBeforeInsert( list<Contact> objC)
    {
        String[] searchEmailKey=(objC.get(0).email).split('@');
        List<Account> arrayAccounts = [select name from Account where Domain_Name__c=: searchEmailKey[1] ];
        system.debug(searchEmailKey[1]);
        system.debug(arrayAccounts);
        for(Contact c:objC)
        {
             for(Account a:arrayAccounts)
                {
                     C.accountID=a.Id;
                }
        } 
    }
}