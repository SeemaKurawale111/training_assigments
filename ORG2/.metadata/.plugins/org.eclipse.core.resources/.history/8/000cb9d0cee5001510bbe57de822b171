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
   map<ID,Account> accountMapList = new map<ID,Account>([select ID,Name from Account]);
   system.debug(accountMapList);
 }
 

}