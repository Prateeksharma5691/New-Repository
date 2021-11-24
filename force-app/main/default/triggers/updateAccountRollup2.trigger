trigger updateAccountRollup2 on Contact (after insert) {

    List<id> fetchedContactId = new List<id>();
    
    for(contact con:trigger.new){
        
        fetchedContactId.add(con.id);
        
    }
    
    list<account> upAccount = [select id,Realated_Contact_Numbers__c from account 
                               where Id IN (SELECT accountid from contact where id =: fetchedContactId)]; 
    
    list<contact> upCotact = [select id from contact where accountid =: upAccount];
    
    if(fetchedContactId.size()>0){
        for(Contact cont:[select id from contact where ID =:fetchedContactId]){
            upCotact.add(cont);
   
        }
  
    }
    
    list<account> acc = new list<account>();
    
    for(account ac:upAccount){
        
        
        
        ac.Realated_Contact_Numbers__c =+ String.valueOf(upCotact.size());
        acc.add(ac);
        
    }
    update acc;
    
}