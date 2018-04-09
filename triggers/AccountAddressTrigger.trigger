trigger AccountAddressTrigger on Account (before insert,before update) {
	
        List<Account> accList=new List<Account>();
        for(Account acc:trigger.new)
        {
            if( acc.Match_Billing_Address__c==true)
            {
               acc.BillingPostalCode= acc.ShippingPostalCode;
              
            }
        }
}