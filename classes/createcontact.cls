public class createcontact {
    public void insertContact(List<Account> accList)
    {
        List<Contact>  conList = new List<Contact>();
        for(Account accobj :accList)
        {
            contact conobj=new contact();
            conobj.LastName='Test contact';
            conobj.AccountId=accobj.id;
            conList.add(conobj);
        }
        if(!conList.isEmpty())
        {
            try
            {
                insert conList;
            }
            catch(system.DmlException E)
            {
                system.debug('inserted'+ E.getMessage());
            }
            }
        }
        
    }