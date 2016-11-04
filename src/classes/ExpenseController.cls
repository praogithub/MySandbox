public class ExpenseController {
@AuraEnabled
public static List<Expence__c> getExpenses() {
return [SELECT id, name, amount__c, client__c, date__c,
reimbursed__c, createdDate FROM Expence__c];
}
}