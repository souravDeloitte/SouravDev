public class ContactSearch 
{ public static List<Contact> searchForContacts(String lastname,String Postalcode)
{
           List<Contact> conlist=[select Id,Name from Contact where LastName=:lastname And MailingPostalcode=:Postalcode];
               system.debug(conList);
           return conList;
       }
}