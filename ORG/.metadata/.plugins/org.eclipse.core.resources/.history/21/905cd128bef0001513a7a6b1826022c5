trigger CloneRecords on Account (before insert) 
{
    List<Account> Clone = new List<Account>(trigger.new);
    Account newclone = new Account ();
    
    for( Account temp : Clone)
    {
        if(checkRecursion.runOnce())
        {
            newClone = temp.clone(false,false,true,true);
            insert(newClone);
        }
    }
}