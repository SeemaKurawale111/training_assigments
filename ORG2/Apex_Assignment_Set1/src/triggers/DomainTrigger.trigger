trigger DomainTrigger on Contact (before insert) 
{
    List<Contact> listOfContacts=new List<contact>(trigger.new);
    
    new DomainTriggerHandler().onBeforeInsert();
}