({
              getAccount : function(component, event, helper) {
                             var accAction = component.get("c.getAccDetails");
        accAction.setParams({
            "accId" : component.get("v.recordId")
        });
        accAction.setStorable();
        accAction.setCallback(this,function(response){
            var state = response.getState();
            if(state == "SUCCESS"){
                component.set("v.retrievedAcc",response.getReturnValue());
                alert("Id : "+component.get("v.retrievedAcc.Id")+" and Name : "+response.getReturnValue().Name);
            }
            else if(state == "Error"){
                var toastb = $A.get("e.c:showToast");
                toastb.setParams({
                    "mode" : "dismissed",
                    "message" : "Invalid click"
                });
            }
            else if(state == "INCOMPLETE"){
                
            }
        });
     $A.enqueueAction(accAction);
              },
    navigateTo : function(component, event, helper) {
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
            "recordId" : component.get("v.accountId")
        });
        navEvt.fire();
        $A.enqueueAction(navigateTo);
    },
    showToast : function(typeOfToast, toastMode, messageString){
        var toastEvent = $A.get("e.force:shotToast");
        toastEvent.setParams({
            mode:toastMode,
            message:messageString,
            type:typeOfToast,
            messageTemplateData: ['Salesforce',{
                url: 'http://www.salesforce.com/',
                label: 'here',
            }]
        });
        toastEvent.fire();
    }
    
})