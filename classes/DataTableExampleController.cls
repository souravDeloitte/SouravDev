public class DataTableExampleController {
    public List<Contact> contactList {
        get {
            if (contactList == null) {
                contactList = [SELECT Account.Name,Account.AccountNumber,Account.AnnualRevenue, FirstName, LastName, Phone FROM Contact  ];
            }
            return contactList;
        }
        set;
    }

}