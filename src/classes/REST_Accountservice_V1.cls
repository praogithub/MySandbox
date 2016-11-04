@RestResource(urlMapping='/v1/accounts/*')

global with sharing class REST_Accountservice_V1{

@HttpGet
global static Account doGet(){
  RestRequest resreq = RestContext.request;
  RestResponse resresp = RestContext.response;
  
  String accountId = resreq.requestURI.subString(resreq.requestURI.lastIndexOf('/')+1);
  
  Account result = [Select Id,name,phone,Website,BillingState,BillingCountry From Account where External_Id__c = : accountId ];
  return result;
}



}