public class showDetails
{
    public List<Account> account { get; set; }
    public String name { get; set; }
    public String errMsg { get; set; }
    
    public showDetails(ApexPages.standardController cont)
    {
       errMsg =' No records found';
    }

    public void searchaccountdetail()
    {
        String acc = 'select Name,phone,AccountNumber from Account where Name =:name';
        account =database.query(acc);
       
    }
}