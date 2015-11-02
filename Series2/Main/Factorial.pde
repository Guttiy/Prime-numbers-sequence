class Factorial extends Sequence {
  
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
  int [] compute(int n){
    int [] b = new int [1];
    if (n<2){
      b[0]=1;
      return b ;
    }else{
      int [] c = compute(n-1);
      return append(c, c[c.length-1]*n);
    }
    
  }
}