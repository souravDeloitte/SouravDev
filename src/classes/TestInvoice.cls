public class TestInvoice {
 public Apexpages.StandardController StanCon { get; set; }
    public List<Product__c> LineItems { get; set; }

    public TestInvoice(Apexpages.StandardController con){
        this.StanCon = con;
        Init();
    }

    private void Init(){
        LineItems = new List<Product__c>();
        LineItems.add(new Product__c());
    }

    public void AddLineItem(){
        LineItems.add(new Product__c());
    }
    }