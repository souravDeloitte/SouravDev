public with sharing class showOpptyaddress {

ApexPages.StandardSetController setCon;
         
         
    
        public ApexPages.StandardSetController oppsList {get; set;}
        public ApexPages.StandardSetController customobjectList {get; set;}
        

          public showOpptyaddress ()
           {
   
           }
       
       

         public showOpptyaddress (ApexPages.StandardSetController controller)
         {
    
             
     
             customobjectList = new ApexPages.StandardSetController
                (Database.getQueryLocator([
                Select Name,price__c from product__c
               ]));
             
            
          }
}