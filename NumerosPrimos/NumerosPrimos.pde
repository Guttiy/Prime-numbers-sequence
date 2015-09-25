import java.util.*; 

void setup () {
      size(300,300);
      background(#336699);
      stroke(250);
      int n, status = 1, num = 3; 

      n = 100; 

      if (n >= 1) 
      { 
         System.out.println("Primeros "+n+" números primos son :-"); 
         System.out.println(2); 
      } 

      for ( int count = 2 ; count <=n ;  ) 
      { 
         for ( int j = 2 ; j <= Math.sqrt(num) ; j++ ) 
         { 
            if ( num%j == 0 ) 
            { 
               status = 0; 
               break; 
            } 
         } 
         if ( status != 0 ) 
         { 
            System.out.println(num); 
            count++; 
         } 
         status = 1; 
         num++;
         line(width/2 + cos(num) * num, height/2 + sin(num) * num,num,num);
      }         
   } 