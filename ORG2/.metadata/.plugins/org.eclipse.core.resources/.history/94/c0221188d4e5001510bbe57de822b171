global class Lead_DML
{ 
    public void updateStatus()
    {
        Set<Lead> s = new Set<Lead>([SELECT Name FROM Lead WHERE Status = 'Open']);
        for(Lead leadSet : s)
        {
            system.debug(s);
        } 
        for(Lead leadSet : s)
        {
            leadSet.Status = 'Closed - Converted';
            update leadSet;
        }      
    }
}
/*
Lead_DML l = new Lead_DML();
l.updateStatus();
*/