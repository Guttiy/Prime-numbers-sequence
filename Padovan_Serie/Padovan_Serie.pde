

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
   
 size(850,850);
  int W = width ;
  int h = height; 
 
    for(int i = 25; i>= 1; i--){        

       rect((W/2)-(padovan(i)/2),(h/2)-(padovan(i)/2),padovan(i),padovan(i));
  fill(map(padovan(i), 0, padovan(25),0, 255)); 
   
                   
}  

}