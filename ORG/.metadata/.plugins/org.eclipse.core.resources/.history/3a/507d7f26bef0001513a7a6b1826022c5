public class DML_Day10
{

    public void insertRecords()
    {
       List<Lead> leadList = new List<Lead>();
      for(Integer leadIndex = 0; leadIndex < 100; leadIndex++) 
      {
            if(leadIndex < 50)
            {
                 Lead leadRecordAllField = new Lead(LastName = 'Seema'+(leadIndex), Company = 'ESPL', status = 'Open');
                 leadList.add(leadRecordAllField);
            }
            else
            {
                Lead leadRecordNotAllField = new Lead(LastName = ''+(leadIndex+100), Company = '', status = '');
                leadList.add(leadRecordNotAllField);
            }
        }
        Database.SaveResult[] ListSavedResult = Database.insert(leadList, false);
        Log__c logObject = new Log__c();

        for (Database.SaveResult savedResult : ListSavedResult) {
            if (savedResult.isSuccess()) {
                    System.debug('Successfully inserted account.Lead ID: ' + savedResult.getId());
            }
            else
            {
                for(Database.Error error : savedResult.getErrors()) 
                {
                    logObject.Error__c = error.getMessage();
                }
                    System.debug(logObject);
            }
        }
    }
    
    
    
    public void deleteRecords()
    {
       Account[] dAccts = [SELECT  Id, Name FROM Account Where Active__c='No' And CreatedDate= LAST_N_DAYS:90];
       try 
       {
            delete dAccts;
       } catch (DmlException e) { }
    }
    
    
    public void UpsertRecords()
    {
    
    Asset assestRecord = new Asset(name = 'Bhushan', Line_Item_Id__c='10', AccountId = '0012800000Qkovv', ContactId='0032800000GeHK3');
        try 
        {
            upsert assestRecord Line_Item_Id__c ;
            system.debug(assestRecord );
        } 
        catch (DmlException e) 
        {
            system.debug('Assest Record not inserted'+e.getmessage());
            
        }
    }    
}