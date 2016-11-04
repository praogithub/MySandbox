public with sharing class wrapperClassController2 {


//Our collection of the class/wrapper objects cContact
public List<cContact> contactList{get; set;}
    
    
    public List<cContact> getContacts() {
        return null;
    }


//This is our wrapper/container class. A container class is a class, a data structure, or an abstract data type whose instances are collections of other objects. In this example a wrapper 
//class contains both the standard slaesforce object Contact and a Boolean value 
public class cContact {
          public Contact con {get; set;}
          public Boolean selected{get; set;}
// This  is constructor method . When we create  a new cContact object we pass a Contact that is set to the con property. We also set the selected value to false

public cContact(Contact c){
     con = c;
     selected = false;
    

}
 

}


}