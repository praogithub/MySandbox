global class insertAccounts implements Database.Batchable<SObject>
{
global final String Query;
global insertAccounts(String q)
{
Query=q;
}
 
global Database.QueryLocator start(Database.BatchableContext BC)
{
return Database.getQueryLocator(query);
}
 
global void execute(Database.BatchableContext BC,List<Sobject> scope)
{
List <Account> lstAccount = new list<Account>();
for(Sobject s : scope)
{
 Account a = (Account)s;
lstAccount.add(a);
}
insert lstAccount;
}
 
global void finish(Database.BatchableContext BC)
{
                //Send an email to the User after your batch completes
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
String[] toAddresses = new String[] {'preetamthandra@gmail.com'};
mail.setToAddresses(toAddresses);
mail.setSubject('Apex Batch Job is done');
mail.setPlainTextBody('The batch Apex job processed ');
Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
}
}