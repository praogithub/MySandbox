public with sharing class MapListSetexample {

    public String getNames() {
        
         System.debug('@@@@@@@@@@@@@@@@@@@@@@@names'+names);
    //System.debug('@@@@@@@@@@@@@@@@@@@@@@@names2'+names[1][2]);
        return null;
    }


    public Telangana_Force__c getMc() {
    
     mc = Telangana_Force__c.getOrgDefaults();
        return mc;
    }


    public PageReference DisplaysetListMapvalue() {
       
       if(insideSet.size() > 0 ){
       System.debug('@@@@@@@@@@@@@@@@@@@insideSet'+insideSet);
       
       }
       
       
        return null;
    }

    public String hellostr {get;set;}
    List<List<String>> names {get;set;}
    public Set<String> insideSet { get; set; }
   // insideSet.add('SanFrancisco');
   // insideSet.add('NewYork');
   // insideSet.add('Paris');
   // insideSet.add('Tokyo'); 
    
    public List<String> insideList { get; set; }

    public Map<Integer,String> insidemap { get; set; }
    
    public Telangana_Force__c mc;
    
    public MapListSetexample() {
    hellostr = 'Preetam' + '\t'+ 'Thandra';
    insideSet = new Set<String>{'SanFrancisco','NewYork','Paris','Tokyo','SanFrancisco'};
    insideList = new List<String>{'SanFrancisco','NewYork','Paris','Tokyo','SanFrancisco'};
    insidemap = new Map<Integer,String>{1 => 'SanFrancisco',2 =>'NewYork',3 => 'Paris', 4 => 'Tokyo' , 2 =>'SanFrancisco'};
   // Map<List<Telangana_Force__c>, Telangana_Force__c> mcs = Telangana_Force__c.getAll();
    //mc = Telangana_Force__c.getOrgDefaults();
    
    names = new List<List<String>>{
    new List<String>{'John', 'Mark', 'David'},
    new List<String>{'Peter', 'Ken', 'Mary'},
    new List<String>{'Fisher', 'Alice', 'Chris'},
    new List<String>{'Tod', 'Jen', 'Joe', 'Morton'}
    };
    
   
    
    }
    
    
    
}