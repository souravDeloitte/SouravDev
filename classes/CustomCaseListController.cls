public with sharing class CustomCaseListController {
    public ApexPages.standardcontroller Controller {get;set;}
    Public String caseId {get; set;}
    public ApexPages.standardSetController setcOntroller{get;set;}
    public Case c { get; set; }
   
    
    public CustomCaseListController(ApexPages.StandardSetController controller) {
        this.setcOntroller = controller;        
    }
    
    public CustomCaseListController(ApexPages.StandardController stdController) {               
        Controller = stdController;        
        this.c = (Case)stdController.getRecord(); 
        System.debug('ssssss'+c);
    }
    
    
    public void acceptCase() { 
       // List<case> caseList = (List<case>)ApexPages.currentPage().getParameters().get('caseList'); 
        system.debug('selected values: ' +ApexPages.currentPage().getParameters().get('caseList'));
        
    } 
    
}