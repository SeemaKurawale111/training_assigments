trigger EmployeeTrigger on Employee__c (after delete, 
                                        after insert, 
                                        after undelete, 
                                        after update, 
                                        before delete, 
                                        before insert, 
                                        before update) {
 
    if(trigger.isBefore) {
        if(trigger.isInsert) {
            system.debug('New    :'+trigger.new);
        }
        if(trigger.isUpdate){
            system.debug('New    :'+trigger.new);
            system.debug('NewMap :'+trigger.newmap);
            system.debug('Old    :'+trigger.old);
            system.debug('OldMap :'+trigger.oldmap);
        }
        if(trigger.isDelete){
            system.debug('Old    :'+trigger.old);
            system.debug('OldMap : '+trigger.oldmap);
        }
    }
    
    if(trigger.isAfter) {
        if(trigger.isInsert) {
            system.debug('New    :'+trigger.new);
            system.debug('NewMap : '+trigger.newmap);
        }
        if(trigger.isUpdate){
             system.debug('New   :'+trigger.new);
            system.debug('NewMap : '+trigger.newmap);
            system.debug('Old    :'+trigger.old);
            system.debug('OldMap : '+trigger.oldmap);
        }
        if(trigger.isDelete){
            system.debug('Old    :'+trigger.old);
            system.debug('OldMap : '+trigger.oldmap);
        }
        if(trigger.isUndelete){
            system.debug('Old    :'+trigger.old);
            system.debug('OldMap : '+trigger.oldmap);
        }
        
    }
        
    
}