public class StringArrayTest {
    public static String[] generateStringArray(integer n)
    {
        List<String> var=new List<String>();
        for(integer i=0;i<n;i++)
        {
            var.add('Test ' +i);
           system.debug(var[i]);
        }
return var;
    }
}