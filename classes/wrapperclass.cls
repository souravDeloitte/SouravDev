public class wrapperclass {
    Public Class Lists{
        public Account acc{get;set;}
        public List<Contact> contacts{get;set;}
        public List<Opportunity> opps{get;set;}
        public Lists(){
            this.acc = new Account();
            this.contacts = new List<Contact>();
            this.opps = new List<Opportunity>();
        }
    }
    Public List<Lists> lstList{get;set;}
    Public wrapperclass(){
        lstList = new List<Lists>();
        List<Account> lstAccount = [Select Id, Name, (Select Id, Name from Contacts), 
            (Select Id, Name from Opportunities) From Account order by name];
        if(lstAccount.size()>0){
            for(Account acc:lstAccount){
                Lists lst = new Lists();
                lst.acc = acc;
                if(acc.Contacts.size()>0){
                    lst.contacts = acc.Contacts;
                }
                if(acc.Opportunities.size()>0){
                    lst.opps = acc.Opportunities;
                }
                lstList.add(lst);
            }
        }
    }
}