@isTest
private class HelloWorldTestClass{
         static testMethod void validateHelloWorld(){
         Book__c b = new Book__c(Name='Behind the Cloud',Price__c=100);
         System.debug('Price before inserting new book: ' +b.Price__c); 
         //Insert block
         insert b;
         //Retrieve the new book
         b = [SELECT Price__c From Book__c WHERE id =:b.id];
         System.debug('Price after trigger got fired: ' +b.Price__c);
         
         
         //Test that the trigger correctly updated the price
         System.assertEquals(90, b.Price__c);
         }



}