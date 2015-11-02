class Primos extends Sequence {

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
    int [] compute(int n) {
    int [] res= {2};
    int status=1;
    int num=3;
    for ( int count = 2; count <n; ) 
    { 

      for ( int j = 2; j <= Math.sqrt(num); j++ ) 
      { 
        if ( num%j == 0 ) 
        { 
          status = 0; 
          break;
        }
      } 
      if ( status != 0 ) 
      { 
        res=append(res, num);
        count++;
      }
      status=1;
      num++;
    }
    return res;
  }
}