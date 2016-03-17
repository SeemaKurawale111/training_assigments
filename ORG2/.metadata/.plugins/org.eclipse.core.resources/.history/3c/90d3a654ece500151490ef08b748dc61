public class DML_Day10
{
    public void deleteRecords()
    {
       Account[] dAccts = [SELECT  Id, Name FROM Account Where Active__c='No' And CreatedDate<Today];
       try 
       {
            delete dAccts;
       } catch (DmlException e) { }
    }
    
    public void UpsertRecords()
    {
    
    Asset assestRecord = new Asset(name = 'Kaveeta', id = '02i28000001Ogzx');
        try 
        {
            upsert(assestRecord);
        } 
        catch (DmlException e) 
        {
            system.debug('Assest Record not inserted');
        }
    }    
}