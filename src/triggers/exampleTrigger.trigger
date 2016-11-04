trigger exampleTrigger on Contact (after insert,after delete) {
    if(Trigger.isInsert){
        Integer recordCount = Trigger.New.size();
        //Call a utility method from another class
  List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
  List<String> toAddress = new List<String>();
  Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
  toAddress.add('preetamthandra@gmail.com');
  mail.setToAddresses(toAddress);
  mail.setSenderDisplayName('Trail head Sample');
  mail.setSubject('Status of insert');
  String Body = 'Dear '+recordCount+',';
  body += 'Your insert has been successfully completed';
  
  mail.setHtmlBody(body);
  mails.add(mail);
  Messaging.sendEmail(mails);
    }
    
    else if (Trigger.isDelete) {
        //Process after delete
        
    }
}