// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
  
  
  int W = width ;
  int h = height;
  
  abstract String author(String auth);
  
  abstract String description(String des);
  
  abstract int compute(int n);
  
  abstract void display(int n);
  
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i);
    return seq;
  }
  
   String toString(int n) {
    return Arrays.toString(toArray(n));
  }
  
  
  void barChart(int n){
   stroke(0, 202, 0);
    for (int i=0;i<=n;i++){
      strokeWeight(1);
      rect((i*(W/n)),0,(W/n),((compute(i)*h)/compute(n-1)));
      fill(0,502,400);
    }
  }
  
  
  void lineChart(int n){
    stroke(500, 0, 0);
     for(int i=0;i<=n;i++){
       strokeWeight(5);
       line(((i*(W/n))+(W/(2*n))),((compute(i)*h)/compute(n-1)),(((i+1)*(W/n))+(W/(2*n))),((compute(i+1)*h)/compute(n-1)));
     }      
  }
  
  void curveFitting(int n){
     for(int i=0;i<=n;i++){
      stroke(0, 102, 255);
      strokeWeight(3);
       curve(((i*(W/n))+(W/(2*n))),((compute(i)*h)/compute(n-1)),(((i+1)*(W/n))+(W/(2*n))),((compute(i+1)*h)/compute(n-1)),(((i+2)*(W/n))+(W/(2*n))),((compute(i+2)*h)/compute(n-1)),(((i+3)*(W/n))+(W/(2*n))),((compute(i+3)*h)/compute(n-1)));
     } 
  }
}