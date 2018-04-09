public class poc_class {
    public List<Product__c> UserTemp = new List<Product__c>();
    public poc_class (){
    }
    List<SelectOption> productprice = new List<SelectOption>();
    public List<SelectOption> pro
    {
        get
        {
            UserTemp = [Select id,name,Price__c from Product__c ];
            
            for(Product__c temp : UserTemp)
            {
                productprice.add(new SelectOption(String.valueOf(temp.Price__c), temp.name));
            }
            return productprice;
        }
        set;
    }
    public Decimal fieldValue {get; set;}
    public Decimal Selectvaluename{get; set;}
    public Decimal inputField1{get;set;}
    public void passValueToController(){
        fieldValue =  Selectvaluename;
    }
    public Integer quantity{get;set;}
    public Integer cost{get;set;}
    public Integer total{get;set;}
    
    public Decimal outputField1{get;set;}
    public void calculate(){
    System.debug('Entered method '+ this.inputField1);
    if(null != this.fieldValue){
        this.outputField1 = 0.25* this.inputField1;
        
    }
}
}