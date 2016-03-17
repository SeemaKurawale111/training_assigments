public class DomainTriggerHandler 
{
    public void onBeforeInsert()
    {
      Set<String> domainSet = new Set<String>();
      //Split & get the doamin
      for(sObject contactItr : Trigger.new)
      {
        if(String.isNotBlank(String.valueOf(contactItr.get('email'))))
        {
           String emailString = String.valueOf(contactItr.get('email'));
           domainSet.add(emailString.subString(emailString.indexOf('@')+1,emailString.length()));
        }
      }
      
      Map<String,Id> domainAccIdMap = new Map<String,Id>();
      //Query on Account to get associate account for the domain
      for(Account accountItr : [SELECT Id, Domain_Name__c FROM Account WHERE Domain_Name__c IN :domainSet])
      {
          domainAccIdMap.put(accountItr.Domain_Name__c,accountItr.Id);
      }
        
      //Associating Contact with Account
      for(sObject contactItr : Trigger.new)
      {
        if(String.isNotBlank(String.valueOf(contactItr.get('email'))))
        {  
           String emailString = String.valueOf(contactItr.get('email'));
           String domainString = emailString.subString(emailString.indexOf('@')+1,emailString.length());
               
           if(domainAccIdMap.containsKey(domainString))
           {
             contactItr.put('AccountId',domainAccIdMap.get(domainString));
           } 
        }
      }
    }
}