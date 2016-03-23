trigger CloneRecords on Account (before insert) 
{
    Account newclone = new Account ();    
    for( Account temp : trigger.new)
    {
        if(checkRecursion.runOnce())
        {
            newClone = temp.clone(false,false,true,true);
            insert(newClone);
        }
    }
}