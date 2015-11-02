// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {


  int W = width ;
  int h = height;

  abstract String author(String auth);

  abstract String description(String des);

  abstract int [] compute(int n);
  /*
  Para graficar una serie se pide la serie en un array que es como la entrega
   la funcion compute de carda serie y se pide los indicativos del cuadrante
   en el cua se va a graficar, lo que quiere decitr que es para el cuadrante
   de la esquia superiro izq es 0, 0, para el de la inferior derecha es ancho/2,
   alto/2
   */
  void display(int [] serie, int x, int y) {
    float ancho=width/(serie.length*2);
    float alto=height/(serie[serie.length-1]*2);
    for (int i =0; i<serie.length; i++) {
      rect(x+(ancho*i), y, ancho, alto*serie[i]);
    };
  };

  String toString(int n) {
    return Arrays.toString(compute(n));
  }


  void barChart(int [] serie, int x, int y) {
    stroke(0, 202, 0);
    float ancho=width/(serie.length*2);
    float alto=height/(serie[serie.length-1]*2);
    for (int i =0; i<serie.length; i++) {
      rect(x+(ancho*i), y, ancho, alto*serie[i]);
      fill(0, 502, 400);
    };
  }
/*
  Para graficar la linea de una serie se pide la serie en un array que es como la entrega
   la funcion compute de carda serie y se pide los indicativos del cuadrante
   en el cua se va a graficar, lo que quiere decir que es para el cuadrante
   de la esquia superiro izq es 0, 0, para el de la inferior derecha es ancho/2,
   alto/2
   */
  void lineChart(int [] serie, int x, int y) {
    stroke(500, 0, 0);
    strokeWeight(2);
    float ancho=width/(serie.length*2);
    float alto=height/(serie[serie.length-1]*2);
    float b =ancho/2;
    for (int i =0; i<serie.length-1; i++) {
      line(x+(ancho*i)+b, y+alto*serie[i], x+(ancho*(i+1))+b, y+alto*serie[i+1]);
    };
    
  }

  void curveFitting(int [] serie, int x, int y) {
    stroke(200, 300, 0);
    strokeWeight(2);
    float ancho=width/(serie.length*2);
    float alto=height/(serie[serie.length-1]*2);
    float b =ancho/2;
    noFill();
    for (int i =1; i<serie.length-2; i++) {
      curve(x+(ancho*(i-1))+b, y+alto*serie[i-1],
      x+(ancho*i)+b, y+alto*serie[i],
      x+(ancho*(i+1))+b, y+alto*serie[i+1],
      x+(ancho*(i+2))+b, y+alto*serie[i+2]);
    };
    fill(250);
  }
}