({
    doInit : function(component, event, helper) {
        helper.getAccount(component, event, helper);
              },
    saveChanges : function(component, event, helper) {
              helper.navigateTo(component, event, helper);
                                             },
    displayToast : function(component, event, helper) {
        helper.showToast(component, event, helper);
                               }
})