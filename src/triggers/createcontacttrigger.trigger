trigger createcontacttrigger on Account (After insert) {
createcontact obj=new createcontact();
    obj.insertContact(trigger.new);
}