import java.util.*;

void setup() {
  int c, n, fact = 1;
  n = 10;
  for (c = 1; c <= n; c++) {
    fact = fact * c;
    System.out.println(fact);
  }
  System.out.println("Factorial de " + n + " = " + fact);
}