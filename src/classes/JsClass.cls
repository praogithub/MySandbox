global class JsClass {

    webService static Id makeContact (String lastName, Account a) {
        System.debug('hiiiiiiiii');
        Contact c = new Contact(LastName = lastName, AccountId = a.Id);
        return c.id;

    }

}