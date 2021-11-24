public class NewApexClass {
    public Static void printoutput(string  stringToDisplay){
    
       system.debug('stringToDisplay '+ stringToDisplay);
    }
    public  void displayNameAndNumber(string firstName,integer phoneNumber){
        
        string randomName = 'Shashank';
        
        if(firstName =='Rohit'){
            
            
            randomName = 'Prateek';
            system.debug('FirstName is '+ firstName +'Change it to=: ' +randomName);
        }else{
            
        system.debug('It is not Rohit it is =:' + randomName);
        }
        system.debug('Customer Name =: '+ firstName +' ' + 'Customer Phone Number =:'+ phoneNumber);
        
    }
}