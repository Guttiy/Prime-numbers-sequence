import java.util.*;
float r=0;
float f=0;
void setup() {
   size(300,300);
  background(#336609);
  stroke(255);
}
void draw(){
  int c, n, fact = 1;
  n = 1;
  for (c = 1; c <= n; c++) {
    fact = fact * c;
    point(width/2 + cos(f) * r, height/2 + sin(f) * r);
    f = f + fact;
    r = r + 0.1;
    System.out.println(fact);
  }
  System.out.println("Factorial de " + n + " = " + fact);
  
}