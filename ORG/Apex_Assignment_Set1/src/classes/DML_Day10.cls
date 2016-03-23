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
                Lead leadRecordNotAllField = new Lead(LastName = 'Seema'+(leadIndex+100), Company = '', status = '');
                leadList.add(leadRecordNotAllField);
            }
        }
        
        Database.SaveResult[] ListSavedResult = Database.insert(leadList, false);
     //   Log__c logObject = new Log__c();
      
         for (Database.SaveResult savedResult : ListSavedResult) 
         {
            if (savedResult.isSuccess()) {
                    System.debug('Successfully insertion');
            }
            else
            {
                for(Database.Error err : savedResult.getErrors()) 
                {        
                     Log__c logObject = new Log__c(); 
                     insert logObject;                        
                     System.debug('Unsuccessfully insertion '+err.getMessage());             
                }              
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
    
    Asset assestRecord = new Asset(Name = 'Seema', Line_Item_Id__c = '5678903',  AccountId = '0012800000PHjBj',
                                       ContactId = '0032800000JoKpO');                                  
        try 
        {
            upsert assestRecord Line_Item_Id__c ;            
            System.debug('Assest Record : ' +assestRecord);
        }
        catch (DmlException e) 
        {
            system.debug('Assest Record not inserted : '+e.getmessage());
        }
    }
        
}