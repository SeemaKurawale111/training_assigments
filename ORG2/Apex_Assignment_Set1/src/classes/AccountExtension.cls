public class AccountExtension {

    public List<Account> accountList;
    public List<Contact> contactList;
    public list <account> searchAccountList {get;set;} 
    public String currentContactId{ get; set;}
    public List<Contact> deleteContact = new List<Contact>();
    
    public Integer size{get; set;}
    public String searchString {get;set;} 

    public List<String> alphabetList {get;set;}
    public String alpha {get;set;}     
    public List<Contact> displayContactList {get;set;} 
      
    public AccountExtension(ApexPages.StandardController controller)
    {     
        accountList = new List<Account>();
        contactList = new List<Contact>();     
        currentContactId = ApexPages.currentPage().getParameters().get('id');    
        
        displayContactList=new List<Contact>([select Id,Name,Phone,Email from Contact where AccountId=:currentContactId ORDER BY Name ]); 
        alphabetList=new List<String>{'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','All'};
        alpha ='All';       
    
        for(Contact objContact: displayContactList)
        {
            if(alpha.equals('All'))
            {
                contactList.add(objContact);
            }
            else
            {
                if((objContact.Name.startsWith(alpha)) || (objContact.Name.startsWith(alpha.toLowerCase())))
                {
                    contactList.add(objContact);
                }
            }
        }      
    }
    
    public List<Account> getAccountList()
    {      
        accountList=[SELECT Id, Name, Phone, Website, Email__c, Industry, AccountNumber FROM Account];
        size = accountList.size();
        return accountList;                        
   }
   
   public List<Account> getListCurrentAccount()
   {
        return[SELECT Id, Name, Phone, Website  FROM Account WHERE Id=:currentContactId];
   }
    
    public List<Contact> getContactList()
    {        
       contactList=[SELECT Id, Name, Phone, Email FROM Contact WHERE AccountId=:currentContactId ];
       size = contactList.size();
       return contactList;                    
    } 
   
   public pageReference deleteAll()
   {
       deleteContact = [SELECT Id FROM Contact WHERE AccountId=:currentContactId ];
       delete deleteContact;
       PageReference referenceAccountList = new PageReference('/apex/AccountList');
       referenceAccountList.setredirect(True);
       return referenceAccountList;
   } 
   
    public void search()
    {   
       if(searchString.length()<3)
       {
           ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Input at least 3 characters to perform search'));
       }
       else{
             String searchquery='SELECT name,Email__c,Phone,Website FROM account WHERE name like \'%'+searchString+'%\'';  
             searchAccountList = Database.query(searchquery);              
      }        
    } 
   
   public void clear()
   {  
       searchAccountList.clear();  
   }
   

    public void displayAlphabeticalSearch()
    {
        contactList.clear();
        system.debug(alpha);
        for(Contact objContact: displayContactList)
        {
            if(alpha.equals('All'))
            {
                contactList.add(objContact);
            }
            else
            {
                if((objContact.Name.startsWith(alpha)) || (objContact.Name.startsWith(alpha.toLowerCase())))
                {
                    contactList.add(objContact);
                }
            }
        }  
        system.debug(contactList);
    }
     
       
   @RemoteAction
   public static void deleteContact(Id ContactId ) 
   {
      Contact deleteCont = [Select Id from Contact where Id=:ContactId ];
      delete deleteCont ;
   }      
}