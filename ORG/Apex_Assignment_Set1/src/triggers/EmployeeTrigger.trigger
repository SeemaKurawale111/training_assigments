trigger EmployeeTrigger on Employee__c (after delete, 
                                        after insert, 
                                        after undelete, 
                                        after update, 
                                        before delete, 
                                        before insert, 
                                        before update) {
 
    if(trigger.isBefore) {
        if(trigger.isInsert) {
            system.debug('isBefore isInsert New    :'+trigger.new);
        }
        if(trigger.isUpdate){
            system.debug('isBefore isUpdate New    :'+trigger.new);
            system.debug('isBefore isUpdate NewMap :'+trigger.newmap);
            system.debug('isBefore isUpdate Old    :'+trigger.old);
            system.debug('isBefore isUpdate OldMap :'+trigger.oldmap);
        }
        if(trigger.isDelete){
            system.debug('isBefore isDelete Old    :'+trigger.old);
            system.debug('isBefore isDelete OldMap : '+trigger.oldmap);
        }
    }
    
    if(trigger.isAfter) {
        if(trigger.isInsert) {
            system.debug('isAfter isInsert New    :'+trigger.new);
            system.debug('isAfter isInsert NewMap : '+trigger.newmap);
        }
        if(trigger.isUpdate){
             system.debug('isAfter isUpdate New   :'+trigger.new);
            system.debug('isAfter isUpdate NewMap : '+trigger.newmap);
            system.debug('isAfter isUpdate Old    :'+trigger.old);
            system.debug('isAfter isUpdate OldMap : '+trigger.oldmap);
        }
        if(trigger.isDelete){
            system.debug('isAfter isDelete Old    :'+trigger.old);
            system.debug('isAfter isDelete OldMap : '+trigger.oldmap);
        }
        if(trigger.isUndelete){
            system.debug('isAfter isUndelete Old    :'+trigger.old);
            system.debug('isAfter isUndelete OldMap : '+trigger.oldmap);
             system.debug('isAfter isUndelete New    :'+trigger.new);
            system.debug('isAfter isUndelete NewMap : '+trigger.newmap);
        }
        
    }
        
    
}