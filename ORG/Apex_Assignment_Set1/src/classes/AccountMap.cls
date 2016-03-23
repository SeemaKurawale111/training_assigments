public class AccountMap
{
    public void idKey()
    {
        Map<id,Account> accMap = new Map<id,Account>([Select Name from Account]);
        for(Account a : accMap.values())
        { 
            system.debug(a);
        }    
    }
    
    public void nameKey()
    {
        Map<String,Id> accMap = new Map<String,Id>();    
        List<Account> accList = new List<Account>([Select Name, Id from Account]);
        for(Account a : accList)
        {
            accMap.put(a.name,a.id);
        }
            system.debug(accMap);
    }
}