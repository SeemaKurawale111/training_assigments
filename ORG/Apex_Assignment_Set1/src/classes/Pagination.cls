public with sharing class Pagination 
{
    Public Integer noOfRecords{get; set;}
    Public Integer size{get;set;}
    public ApexPages.StandardSetController setCon {
        get{
            if(setCon == null){
                size = 10;
                string queryString = 'Select Name, Email__c, Phone, Industry, Website from Account ';
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(queryString));
                setCon.setPageSize(size);
                noOfRecords = setCon.getResultSize();
            }
            return setCon;
        }set;
    }
     
    Public List<Account> getAccounts(){
        List<Account> accList = new List<Account>();
        for(Account a : (List<Account>)setCon.getRecords())
            accList.add(a);
        return accList;
    }
     
    
    public Boolean hasNext 
    {
        get {
            return setCon.getHasNext();
        }
        set;
    }
    public Boolean hasPrevious 
    {
        get {
            return setCon.getHasPrevious();
        }
        set;
    }
   
    public void first() 
    {
        setCon.first();
    }
  
    public void last() 
    {
        setCon.last();
    }
  
    public void previous() 
    {
        setCon.previous();
    }
  
    public void next() 
    {
        setCon.next();
    }
}