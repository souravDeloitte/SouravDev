global class CompanyCasesQue {
public string FilterId{get;set;}
public list<case> results;
    //constructors and variable declaration

    public PageReference renderdiffview() {
    Map<Id,string> Id_status_map = new map<Id,string>{'00B7F000003ojEQ' => 'New','00B7F000003ojEQ' => 'Closed'};
    results = [select id,casenumber from case where status =: Id_status_map.get(filterId)];
     return null;
    }

    public List<Case> getresults() {      
     return results;
    }
    public List<SelectOption> getItems() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('00B7F000003ojEQ','View All Open Cases'));
        options.add(new SelectOption('00B7F000003ojEQ','View All Cases'));
        options.add(new SelectOption('00B7F000003ojEQ','	Queue For Support'));
        options.add(new SelectOption('00B7F000003ojEQ','Recently Viewed Cases'));
        return options;
    }
}