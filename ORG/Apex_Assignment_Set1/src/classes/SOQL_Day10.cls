public with sharing class SOQL_Day10 {
 
 public void  first()
 {
   List<Contact> record = [SELECT Id, Email FROM Contact];
   System.debug(record);
 }
 
 public void second()
 {
  Map<Id,User> B = new Map<Id,User>([SELECT Id, Name FROM User where isActive= true ]);
  System.debug(B);
 }
 
 public void third()
 {  
   
   Map<String,Id> accountMap = new Map<String,Id>();
   for(Account acc:[select Name, Id from Account])
   {
     system.debug(acc);  
   }
 
   Map<ID,Account> accountMapList = new Map<ID,Account>([select ID,Name from Account]);
   system.debug(accountMapList);
 }
 

}