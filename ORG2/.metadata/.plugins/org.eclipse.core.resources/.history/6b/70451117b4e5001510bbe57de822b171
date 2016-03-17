trigger DuplicateRecords on Contact (before insert) 
{
	Contact[] contactList= Trigger.new;
    Set<String> emailSet = new Set<String>();
    Set<String> MobilenoSet = new Set<String>();
    
    for(Contact  s : contactList)
     {
        emailSet.add(s.Email);
        MobilenoSet.add(s.MobilePhone);
     }
    
     List<contact> duplicateEmailList = [Select s.Name, s.Email From Contact s where s.Email IN :emailSet];
     List<contact> duplicateMobileList = [Select s.Name, s.MobilePhone From Contact s where s.MobilePhone IN :MobilenoSet];
     Set<String> duplicateEmailIds = new Set<String>();
     Set<String> duplicateMobilenos = new Set<String>();
    
     for(Contact  s : duplicateEmailList )
     {
        duplicateEmailIds.add(s.Email);    
     }
     for(Contact  s : duplicateMobileList )
     {
        duplicateMobilenos.add(s.MobilePhone);
     }
      
     for(Contact s : contactList)
     {
      if(duplicateEmailIds.contains(s.Email))
      {
       s.Email.addError('A Contact with the same email address already exists in system.');
      }
      if(duplicateMobilenos.contains(s.MobilePhone))
      {
       s.MobilePhone.addError('A Contact with the same phone number already exists in system.');
      }             
   }
         
}