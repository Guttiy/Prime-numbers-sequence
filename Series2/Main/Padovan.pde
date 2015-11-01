class Padovan extends Sequence {
  
  @Override
  String author (String auth){
   auth="auth";
   return auth;
  }
  
  @Override
  String description (String des){
   des="des";
   return des;
  }
  
  @Override
  int compute(int n){
    if(n == 0)
    return 1;
    
   if(n==1)
     return 1;
     
   if(n==2)
     return 1;
     
    if(n > 2)
    return compute(n-2) + compute(n-3);

     return -1;
  }
  
  @Override
  void display (int m){
     int W = width ;
  int h = height; 
 
    for(int i = m; i>= 1; i--){        
        stroke(0, 0, 0);
       rect((W/2)-(compute(i)/2),(h/2)-(compute(i)/2),compute(i),compute(i));
      fill(map(compute(i), 0, compute(25),0, 255)); 
   
  }
  }
  
}