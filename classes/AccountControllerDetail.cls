public class AccountControllerDetail {
    public AccountControllerDetail(){acc=new Account(); acc.Name=ApexPages.currentPage().getparameters().get('Name');}
   
    public Account acc{get;set;}
    public String inputstr{get;set;}
    
    public PageReference save()
    {
         insert acc;
        pagereference pg=new pagereference('/apex/Accountcontrollertest?core.apexpages.request.devconsole=1&name=vivek');
       
        
        return pg;
    }                                                                                                                                                                                    
}