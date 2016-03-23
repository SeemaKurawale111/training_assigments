public class SOQL_Loops
{
    public void looping()
    {
        List<Account> accountList = [Select AccountNumber, Name From Account] ;
        
        system.debug('...This is Advance For Loop...');
        for(Account a : accountList)
        {
        system.debug(a);
        }
        
        system.debug('...This is Traditional For Loop...');
        for(integer index = 0; index < accountList.size(); index++)
        {
        system.debug(accountList[index]);
        }
       
       system.debug('...This is While Loop...');
       integer index = 0;
        while(index < accountList.size())
        {
        system.debug(accountList[index]);
        index++;
        } 
     }  
     

}