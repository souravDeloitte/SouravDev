public with sharing class JSONGeneratorController {

    public String jsonString { get; set; }
    public List<Account> accontList {get; set;}
    //define shape of Json Response salesforce
    public JSONGeneratorController (){
        jsonString = Json.SerializePretty(getAccountList());
        system.debug(jsonString);
    }
    
    public static List<Account> getAccountList(){
        return ([SELECT Id, Name, OwnerId, Owner.Name, Ownership, Industry, AnnualRevenue,  Type, Rating, NumberOfEmployees, (SELECT FirstName, LastName FROM Contacts WHERE AccountId != null) FROM Account ORDER BY Name ASC LIMIT 10]);
        //return ([SELECT Id, Name,Phone,  OwnerId, Owner.Name, Ownership, Industry, AnnualRevenue,  Type, Rating, NumberOfEmployees FROM Account ORDER BY Name ASC LIMIT 10]);
    }
    
    public String jsonDataAllAccounts {  
      get {  
        //   List<DataTableRow> dataRows = new List<DataTableRow>();  
           if(jsonDataAllAccounts == null){  
                for(Account acct : [SELECT Id, Name, OwnerId, Owner.Name, Ownership, Industry, AnnualRevenue,  Type, Rating, NumberOfEmployees FROM Account ORDER BY Name ASC LIMIT 10]){  
                 //    dataRows.add(new DataTableRow(acct));  
                }  
           }  
          // jsonDataAllAccounts = JSON.serializepretty(dataRows);  
           system.debug('get set variable'+jsonDataAllAccounts);
           return jsonDataAllAccounts;   
      }  
      private set;  
    }  
    
    
    
}