Public class DynamicSObjectCreation{

public static sObject createObject(String typeName){
    Schema.SObjectType targetType = Schema.getGlobalDescribe().get(typeName);
    if(typeName == null) {
    
    
    }
    
    
    return targetType.newSObject();
    

}




}