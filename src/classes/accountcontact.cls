public class accountcontact {
 public accountcontact(){
    }
    
    public void find(){
       List<contact> con = [Select name,Id,AccountId from contact order by account.name ];
        Set<id> IDaccount = new Set<id>();
        for(contact contactRecord :con){
        	IDaccount.add(contactRecord.AccountId);
        }
        List<Account> detailAccounts = [Select name,id from Account where Id IN : IDaccount];
        
        wrapperList = new list<myWrapperClass>();
        for(contact conlist : con){
        	for(Account parentRec :detailAccounts){
        		if(parentRec.Id == conlist.AccountId){
        			myWrapperClass wrapRec = new myWrapperClass();
        			wrapRec.acc = parentRec;
        			wrapRec.con = conlist;
        			wrapperList.add(wrapRec);
        		}
        	}
        } 
    } 
public List<myWrapperClass> wrapperList {get; set;} 
public class myWrapperClass{
	public Account acc{get;set;}
	public contact con{get;set;}
	public Boolean selected {get; set;} 
	public myWrapperClass() { 
         selected = false; 
      } 
}
}