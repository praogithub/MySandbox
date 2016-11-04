global with sharing class AccountRemoter {

public  String accountName {get;set;}
public static Account account {get; set;}
public Accountremoter() {  } /// empty constructor


@RemoteAction
global static Account getAccount(String accountName){
 System.debug('I am in Controller');
 account=[SELECT Id,Name,Phone,Type,NumberofLocations__c From Account WHERE Name =:accountName];

return account;
}



}