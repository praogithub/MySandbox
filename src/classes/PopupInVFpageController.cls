public with sharing class PopupInVFpageController {

    public PageReference closePopup() {
        displayPopup = false;
        return null;
    }

public boolean checkBoxVal{get;set;}
public boolean displayPopup{get;set;}

public pageReference method(){

system.debug('@@@@'+checkBoxVal);

if(checkBoxVal==true)
displayPopup = true;

system.debug('----@'+displayPopup );
return null;
}
}