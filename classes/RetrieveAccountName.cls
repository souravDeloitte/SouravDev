public class RetrieveAccountName {
    @auraEnabled
    public static Account getAccountDetails(String accountId)
    {
		List<Account> accList = [Select Id,Name from Account WHERE id=: accountId];
        return accList[0];
    }

}