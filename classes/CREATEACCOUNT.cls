public class CREATEACCOUNT {
    void random(){
List<Account> accts = new List<Account>();
for(Integer a=0; a<1000; a++) {
accts.add(new Account(Name = 'Acme Corporation ' + a));
 }
 insert accts; 
}
}