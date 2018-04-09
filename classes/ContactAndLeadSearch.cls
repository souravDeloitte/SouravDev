public class ContactAndLeadSearch {
    public static List<List<SOBject>> searchContactsAndLeads(String lname)
    {List<List<SOBject>> sContact = [FIND :lname IN ALL FIELDS RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];
     System.debug(sContact);   
     return sContact;
    }

}