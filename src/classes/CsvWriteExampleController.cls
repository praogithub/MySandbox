public class CsvWriteExampleController {
  public List<List<myClass>> myList {get;set;}
  
  public CsvWriteExampleController(){
      myList = new List<List<myClass>>();
      List<myClass> temp = new List<myClass>();
      
      for(Integer i = 0; i<2500 ; i++){
          if(temp.size() < 1000){
          myClass m = new myClass();
          m.PhoneNumber = 'PhoneNumber' +i;
          m.Name = 'Name' + i;
          temp.add(m);
          
          }
          else{
              myList.add(temp);
              temp = new List<myClass>();
              myClass m = new myClass();
              m.PhoneNumber = 'PhoneNumber' +i;
              m.Name = 'Name' + i;
              temp.add(m);

              }
      }
    myList.add(temp);  
  
  
  }

public class myClass{
    public string PhoneNumber {get;set;}
    public string Name {get;set;}

}


}