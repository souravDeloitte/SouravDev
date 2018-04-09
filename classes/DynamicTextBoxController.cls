public with sharing class DynamicTextBoxController
{   
    public class CustomContact
    {
        public String fieldValue {get; set;}
    public double fieldValue2{get; set;}
    public String price {get; set;}
    public Double quantity {get; set;}
    public String Selectvaluename{get; set;}
    
        public void passValueToController(){
        fieldValue=  Selectvaluename;
        fieldValue2=integer.valueOf(fieldValue)*integer.valueOf(quantity);
    }
        
    }

    public List <CustomContact> customContacts {get; set;}
    public ApexPages.StandardSetController stdCntrlr {get; set;}
     private final Account acct;


   public DynamicTextBoxController()
    {
           customContacts = new List <CustomContact> ();
           

    }
     public List<Product__c> UserTemp = new List<Product__c>();
     List<SelectOption> productprice = new List<SelectOption>();
     public List<SelectOption> pro
    {
        get
        {
            UserTemp = [Select id,name,Price__c from Product__c ];
            
            for(Product__c temp : UserTemp)
            {
                productprice.add(new SelectOption(String.valueOf(temp.Price__c), temp.name));
                //talValue = temp.Price__c * quantity;
            }
            return productprice;
        }
        set;
    }
     

    public void addNewRecord()
    {
   // customContacts = new List <CustomContact> ();
        CustomContact customContact = new CustomContact();
        customContacts.add(customContact);

    }
}