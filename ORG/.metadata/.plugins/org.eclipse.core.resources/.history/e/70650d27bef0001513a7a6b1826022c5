public class LineItemExtension
{
   
    public List<Line_item__c> Listlabor = new List<Line_item__c>();
    public String currentId {get;set;}
   
    
    ApexPages.StandardController sc1;     
    public LineItemExtension(ApexPages.StandardController controller)
    {
        currentId=ApexPages.currentPage().getParameters().get('id');
    }
    
     
    public List<Line_item__c> getListLabor()
    {
        list<Line_item__c> LineItemList = [select Price__c,Product_Name__c,Units__c,Service_Fee__c,tax__c,New_client_Discount__c,labor__c,total__c from Line_item__c where Invoice_Statement__c =: currentId];
        system.debug(LineItemList );
        return LineItemList ;
        
    }
    
}