public class cloneAndReparentPage{
    ApexPages.StandardSetController controller;
    
    public cloneAndReparentPage(ApexPages.StandardSetController controller) {
        this.controller = controller;
    }
    
    public Integer getSelectedCount() {
        return controller.getSelected().size();
    }
    public PageReference cloneAndReparent() {
        Contact[] newRecords = new Contact[0], selRecords = (Contact[])controller.getSelected();    
        String query = String.format(
            'SELECT {0} FROM {1} WHERE ID IN (\'\'{2}\'\')',
            new String[] {
                String.join(
                    new List<String>(
                        Contact.SObjectType.getDescribe().fields.getMap().keySet()
                    ),
                    ','
                ),
                String.valueOf(Contact.SObjectType),
                String.join(
                    new List<Id >(
                        new Map<Id,Contact>(selRecords).keySet()
                    ),'\',\''
                )
            }
        );
        for(Contact record:(Contact[])Database.query(query)) {
            newRecords.add(record.clone(false,false,false,false));
        }
        for(Contact record:newRecords) {
            record.AccountId = (Id)controller.getRecord().get(Contact.AccountId);
        }
        insert newRecords;
        return new ApexPages.StandardController(new Account(Id=(Id)controller.getRecord().get(Contact.AccountId))).view();
    }}