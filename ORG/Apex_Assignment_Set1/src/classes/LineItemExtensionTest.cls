@isTest
public class LineItemExtensionTest
 {
        static testmethod void createTestInvoice_One()
    {
        Invoice_Statement__c oInvoice = new Invoice_Statement__c();
        oInvoice.Status__c = 'Open';
        oInvoice.Description__c = 'test invoice';
        insert oInvoice;
        system.assertEquals(oInvoice.Status__c, 'Open');

        Line_Item__c oLineItem = new Line_Item__c(); 
        oLineItem.Invoice_Statement__c = oInvoice.id;
        oLineItem.Merchandise_Name__c = 'a002800000QUTT5';
        oLineItem.Product_Name__c='Saree';
        oLineItem.tax__c= 75;
        oLineItem.Units__c= 5;
        oLineItem.Service_Fee__c = 200;
        oLineItem.New_client_Discount__c=50;
        oLineItem.labor__c=5;
        insert oLineItem;
        system.assertEquals(oLineItem.Service_Fee__c, 200);

        ApexPages.StandardController sc = new ApexPages.standardController(oLineItem);
        LineItemExtension objExtension =  new LineItemExtension(sc);

        Test.startTest();
        objExtension.getListLabor();
        Test.stopTest();
    }

    static testmethod void createTestInvoice_Two()
    {
        Invoice_Statement__c oInvoice = new Invoice_Statement__c();
        oInvoice.Status__c = 'Open';
        oInvoice.Description__c = 'test invoice';
        insert oInvoice;
        system.assertEquals(oInvoice.Description__c, 'test invoice');

        Line_Item__c oLineItem = new Line_Item__c();
        oLineItem.Invoice_Statement__c = oInvoice.id;
        oLineItem.Merchandise_Name__c = 'a002800000QUTT5';
        oLineItem.Product_Name__c='Saree';
        oLineItem.tax__c= 75;
        oLineItem.Units__c= 5;
        oLineItem.Service_Fee__c = 200;
        oLineItem.New_client_Discount__c=50;
        oLineItem.labor__c=5;
        insert oLineItem;
        system.assertEquals(oLineItem.New_client_Discount__c, 50);

        ApexPages.StandardController sc = new ApexPages.standardController(oLineItem);
       LineItemExtension objExtension =  new LineItemExtension(sc);

        Test.startTest();
        objExtension.getListLabor();
        Test.stopTest();
    }

}