public class NewCaseListController {
    
public List<case> newcase = new List<case>();
    public list<Case> getNewCases() 
    {
    newcase = [Select Id,CaseNumber from Case where status='New'];
    
        return newcase;
    }
}