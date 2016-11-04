public with sharing class testvfpage51135 {

public string tmp{get;set;}

public Static  final String someobject = 'AAAAAAAAAAAA';

public String getbuildTable(){

tmp = '';

For (integer i = 0; i <5; i++){ 
     tmp += '<table bordercolor="#FFCC00" width:300" cellpadding="3" cellspacing="3" >' + '<tr>' + 
        '  <td colspan="4" align="center">' + someobject  +'</td></tr>' ;
}

tmp += '</table>';

return tmp;
}
}