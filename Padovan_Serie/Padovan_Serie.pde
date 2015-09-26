

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