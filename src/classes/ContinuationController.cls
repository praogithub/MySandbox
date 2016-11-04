public class ContinuationController{
//Unique label corresponding to the continuation 

public String requestLabel;
//Result of Callout 
public String result{get;set;}
//Endpoint of long-running service

private static final String LONG_RUNNING_SERVICE_URL = 'https://ws.strikeiron.com';

//Action method
public Object startRequest(){

// Create continuation with a timeout
Continuation con = new Continuation(40);

//Set callback method

con.continuationMethod = 'processResponce';

// Create callout request 
HTTPRequest req = new HTTPRequest();
req.setMethod('GET');
req.setEndpoint(LONG_RUNNING_SERVICE_URL);

//Add callout request to Continuation

this.requestLabel = con.addHttpRequest(req);

//Return the continuation

return con;

}

//Callback Method
public Object processResponce(){
// Get the response by using the unique label
      HttpResponse response = Continuation.getResponse(this.requestLabel);
      // Set the result variable that is displayed on the Visualforce page
      this.result = response.getBody();
      System.debug('@@@@@this.result'+this.result);
      // Return null to re-render the original Visualforce page
      return null;



}



}