public class exampleCon {
List<Account> accounts;

        public List<Account> getAccounts() {
                if(accounts == null) accounts = [SELECT Name FROM Account LIMIT 10];
                return accounts;
        }
}