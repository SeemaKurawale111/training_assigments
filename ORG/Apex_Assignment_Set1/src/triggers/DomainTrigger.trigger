trigger DomainTrigger on Contact (before insert) 
{
 DomainTriggerHandler DTH=new DomainTriggerHandler();
 list<Contact> C=new List<contact>(trigger.new);
    DTH.onBeforeInsert(c);
}