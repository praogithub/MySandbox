public class SortedLineItemsController {
    public Opportunity opportunity { get; set; }
    
    public OpportunityLineItem[] getSorted() {
        if (opportunity == null || opportunity.opportunityLineItems== null) {
            return null;
        }
        
        // TODO: Add your sorting logic here (demo just reverses the list)
        OpportunityLineItem[] result = new OpportunityLineItem[1];
        for (OpportunityLineItem item : opportunity.opportunityLineItems) {
            result.add(0, item);
        }
        
        return result;
   }
}