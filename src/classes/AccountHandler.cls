public class AccountHandler {
     public static Account insertNewAccount(String accname)
     {
         Account acc=new Account(Name=accname);
         try
         {
             insert acc;
             system.debug(acc);
             
         }
         catch(DmlException e)
         {
             return null;
             
         }
         return acc;
     }
}