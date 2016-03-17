trigger Question1Trigger on Employee__c (after insert, 
                                         after update, 
                                         before insert, 
                                         before update,
                                         after delete,
                                         before delete,
                                         after undelete) {
 if(trigger.isBefore && trigger.isInsert)
 {	
    system.debug(trigger.new);
 }
    if(trigger.isBefore && trigger.isUpdate)
 {
     system.debug(trigger.oldmap);
 }
    if(trigger.isBefore && trigger.isDelete)
 {
    system.debug(trigger.oldmap);
 }
 if(trigger.isAfter && trigger.isInsert)
 {
   system.debug(trigger.newmap);
 }
   if(trigger.isAfter && trigger.isupdate)
 {
   system.debug(trigger.newmap);
 }   
 if(trigger.isAfter && trigger.isdelete)
 {
   system.debug(trigger.newmap);
 }
 if(trigger.isAfter && trigger.isundelete)
 {
   system.debug(trigger.newmap);
 }                                                

}