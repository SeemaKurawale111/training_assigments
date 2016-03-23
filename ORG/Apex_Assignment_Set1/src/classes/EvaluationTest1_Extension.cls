public class EvaluationTest1_Extension
{
    private ApexPages.StandardController sController; 
    public List<Account> accountList {get;set;}
    public List<Contact> contactList {get;set;}
    public List<Contact> newContactList {get;set;}
    public String currentId {get;set;}  
    private Boolean viewTable;
    public Boolean getViewTable(){return this.viewTable;}

  
       
    public EvaluationTest1_Extension(ApexPages.StandardController controller) 
    {       
        sController = controller; 
        currentId= ApexPages.currentPage().getParameters().get('id');     
        accountList = new List<Account>([SELECT Id, Name, Phone, Website, Email__c, Industry FROM Account]); 
        contactList =new List<Contact>([SELECT Id, Name, MobilePhone, Email FROM Contact WHERE AccountId=:currentId ORDER BY Name ]); 
        viewTable = false;   
        newContactList =  new List<Contact>();           
    }


    Public void addContact()
    {
         if(viewTable==false)
         {
           viewTable = true;
         }
        Contact cont = new Contact();
        cont.AccountId = currentId ;
        newContactList.add(cont);
        
    }

    public PageReference saveContact() 
    {  
       insert newContactList ;
       PageReference referenceAccountList = new PageReference('/apex/EvaluationTest1_Accounts');
       referenceAccountList.setredirect(True);
       return referenceAccountList;
      
    }
}