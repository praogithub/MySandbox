trigger testonaccountevents on Account (after insert,after update) {

//if(Trigger.isAfter){

System.debug('@@@@@@@@@value'+Trigger.isBefore);

//}


}