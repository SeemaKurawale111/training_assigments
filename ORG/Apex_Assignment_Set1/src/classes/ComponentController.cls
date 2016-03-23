public Class ComponentController
{

    public String ListCurrentAccountSize { get; set; }
    public List<Account> accountList = new List<Account>();
    public List<Contact> contactList = new List<Contact>();
    public String CurrentId{ get; set;}
       
    public ComponentController() {
    }
    
    
    public List<Account> getAccountList(){
        return[SELECT Id, Name, Phone, Website, Email__c, Industry, AccountNumber
               FROM Account];
   }
      public Integer getAccountListSize(){
       return getAccountList().size();
   }
  
   public List<Contact> getContactList(){
        return[SELECT Id, Name, Phone, Email                      
               FROM Contact 
               WHERE AccountId=:CurrentId];
   } 
   public Integer getContactListSize(){
       return getAccountList().size();
   }
   
      public List<Account> getListCurrentAccount(){
        return[SELECT Id, Name, Phone, Website 
               FROM Account 
               WHERE Id=:CurrentId];
   }
      public Integer ListCurrentAccountSize()
   {
   return getListCurrentAccount().size();
   }

}