

int padovan (int n) {
       
  if(n == 1)
    return 1;
    
   if(n==2)
     return 1;
     
   if(n==3)
     return 1;
     
    if(n > 3)
    return padovan(n-2) + padovan(n-3);

     return -1;
}

void setup() {
   
 
    for(int i =1; i< 20; i++){        
    print("."+padovan(i));
           
                   
}  

}