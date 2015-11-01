// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
  
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
  
  }
  
  void lineChart(int n){
    
  }
  
  void curveFitting(int n){
    
  }
}