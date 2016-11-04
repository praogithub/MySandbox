public class productAdd {
 public  List<Product2> Stdproduct{get;set;}
    public List<wrapper> wrapperList {get;set;}  
    public list<wrapper> SelectedprodList{get;set;} 
    public class wrapper
    {
        public product2 cont{get;set;}
        public Boolean selected{get;set;}
        public integer quantity{get;set;}
        public wrapper(product2 c)
        {
            cont = c;
            selected = false;
        } 
    }
    public  List<wrapper> getProdList()
    {        
        if((wrapperList == null) || (wrapperList.size() == 0))
        {                      
            wrapperList = new List<wrapper>();
            Stdproduct = [Select id, Name from product2 limit 2];           
            for(Product2 c :(List<Product2>)Stdproduct)            
            {               
                wrapperList.add(new wrapper(c));
            }
        }             
        return wrapperList;
    }
    
    public PageReference AddQuantity()
    {   
        PageReference pageRef= new PageReference('/apex/AddQuantity');
        //pageRef.setredirect(true);        
        pageRef.setredirect(false);        
        return pageRef;           
    }

    public list<wrapper> getSelectedproducts()
    {
        selectedprodList = new list<wrapper>();      
        for(wrapper cCon:getProdList())
        {            
            if(cCon.selected==true)  
            {                        
                selectedprodList.add(cCon);
            }                           
        }        
        return selectedprodList;           
    }        



}