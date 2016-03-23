global class AccountExtensionClass {

    public List<Account> accountList{ get; set;}
    public List<Contact> contactList{ get; set;}
    public List<Account> searchAccountList{ get; set;}
    public Id CurrentAccountId{ get; set;}
    
    public Integer accountSize{get; set;}
    public Integer searchAccountSize{get; set;}
    public Integer contactSize{get; set;}
    public String searchstring { get; set;}
    public List<Contact> deleteContacts = new List<Contact>();
    
    
    
       
   public AccountExtensionClass(ApexPages.StandardController controller) 
   {       
        accountList = new List<Account>([SELECT Id, Name, Phone, Website, Email__c, industry FROM Account]);
        accountSize= accountList.size();
        contactList = new List<Contact>();     
        CurrentAccountId= ApexPages.currentPage().getParameters().get('id');        
    }
    
    
   public List<Account> getListCurrentAccount()
   {
        return[SELECT Id, Name, Phone, Website FROM Account WHERE Id=:CurrentAccountId];
   }
    
    
  
   public List<Contact> getcontactList()
   {     system.debug('CurrentAccountId-->'+CurrentAccountId);
        contactList = [SELECT Id, Name, Phone, Email FROM Contact WHERE AccountId=:CurrentAccountId]; 
         system.debug('ContactList -->'+contactList);
        contactSize = contactList.size();
        return contactList;
   }
   

/*   
  public PageReference manageContacts() 
  {
     system.debug('CurrentAccountId-->'+CurrentAccountId);
        contactList = [SELECT Id, Name, Phone, Email FROM Contact WHERE AccountId=:CurrentAccountId]; 
     system.debug('ContactList -->'+contactList);
        contactSize = contactList.size();
        PageReference back = new PageReference('/apex/Account_Contacts');
        back.setredirect(false);
        return back ;
  }
 */   
  public pagereference deleteContacts() 
  {
        deleteContacts =[Select Id from Contact where AccountId=:CurrentAccountId];
        delete deleteContacts ;
        pagereference ref = new pagereference('/apex/View_All_Accounts');
        ref.setredirect(false);
        return ref;   
    } 
    
  @RemoteAction
  global static void deleteContact(Id ContactId ) 
  {
      Contact deleteContact = [Select Id from Contact where Id=:ContactId ];
      delete deleteContact ;
  }   
  
  
    public void search(){   
       /*if(searchstring.length()<3)
     {
         ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Input at least 3 characters to perform search'));
     }
       else{*/
     string searchquery='select name,id from account where name like \'%'+searchstring+'%\' Limit 20';  
     searchAccountList = (List<Account>)Database.query(searchquery);
     searchAccountSize = searchAccountList.size();
    // }  
     
   }  
   public void clear(){  
   searchAccountList.clear();
   searchAccountSize = searchAccountList.size();
   }      
}