public with sharing class InvoiceDetail {  
    public class CustomProduct
    {
        public String Priceproduct {get; set;}
    public double Totalamountofproduct{get; set;}
   public Double quantity {get; set;}
    public String Selectvaluename{get; set;}
 
        public void passValueToController(){
       Priceproduct=  Selectvaluename;
          //  system.debug('------'+quantity);
        Totalamountofproduct=integer.valueOf(Priceproduct)*quantity;
              //   system.debug('f1------'+Totalamountofproduct);
    }
        
    }

    public List <CustomProduct> customproducts {get; set;}
    public ApexPages.StandardSetController stdCntrlr {get; set;}



   public InvoiceDetail()
    {
           customproducts = new List <CustomProduct> ();
           
system.debug(''+ customproducts);
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
                 system.debug('f1------'+productprice);
            }
            return productprice;
                 

        }
        set;
   }

    public void addNewRecord()
    {
        CustomProduct customProd = new CustomProduct();
        customproducts.add(customProd);
 }
}