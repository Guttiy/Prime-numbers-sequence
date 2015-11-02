class Padovan extends Sequence {

  @Override
    String author (String auth) {
    auth="auth";
    return auth;
  }

  @Override
    String description (String des) {
    des="des";
    return des;
  }

  @Override
    int []compute(int n) {
    int [] b=new int [1];
    if (n == 0){
       b[0]=1;
      return b ;
    }
    if (n==1)
      return append(compute(n-1), 1);

    if (n==2)
      return append(compute(n-1), 1);

    if (n > 2) {
      int [] d=compute(n-1);
      return append(d, d[d.length-2]+d[d.length-3]);
    }
     b[0]=-1;
    return b;
  }

  
}