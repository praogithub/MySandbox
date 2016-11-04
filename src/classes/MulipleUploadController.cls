public class MulipleUploadController {

    //Picklist of Integer values to hold file count
    public List<SelectOption> filesCountList {get;set;}
    //Selected count
    public String FileCount {get;set;}
    
    public List<Attachment> allFileList {get;set;}
    
    public MulipleUploadController(ApexPages.StandardController controller) 
    {
      //Initialize
      filesCountList = new List<SelectOption>();
      FileCount = '';
      allFileList = new List<Attachment>();
      
      //Adding values count list - you can change this according to your need 
      for(Integer i = 1;i<11 ;i++)
               filesCountList.add(new SelectOption(''+i ,''+i));

    }
    
    public PageReference SaveAttachments(){
    
    
    return null;
    
    }
    
    public PageReference ChangeCount(){
    System.debug('value of file count :'+FileCount );
    allFileList.clear();
    //adding multiple attachments instance
    for(Integer i=1;i<=Integer.valueOf(FileCount) ; i++)
      allFileList.add(new Attachment()); 
    
    return null;
    }

}