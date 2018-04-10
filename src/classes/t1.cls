public class t1 {
    private List<product__c> MyCustomObjectOpptys;
  private product__c MyCustomObject;
public t1(ApexPages.standardController controller)
    {
    this.MyCustomObject=(product__c)controller.getRecord();
    }

}