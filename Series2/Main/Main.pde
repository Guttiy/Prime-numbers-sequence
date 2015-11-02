Sequence sequence;
Factorial fac=new Factorial();
Primos prim=new Primos();
int n=25,a=0;
void setup(){
  sequence = new Padovan();
  

}

void draw() {
  background(0,0,0);
  //println("Factorial n=8: "+Arrays.toString(fac.compute(8)));
  //println("Primos n=8: "+Arrays.toString(prim.compute(8)));
  //println("Padovan n=8: "+Arrays.toString(sequence.compute(8)));
  //println("width="+width);
  //println("Height="+height);
  fac.barChart(prim.compute(10),0,0);
  fac.barChart(fac.compute(5),width/2,height/2);
  fac.barChart(sequence.compute(5),0,height/2);
  fac.lineChart(prim.compute(10),0,0);
  fac.lineChart(fac.compute(5),width/2,height/2);
  fac.lineChart(sequence.compute(5),0,height/2);
  fac.curveFitting(prim.compute(10),0,0);
  fac.curveFitting(fac.compute(5),width/2,height/2);
  fac.curveFitting(sequence.compute(5),0,height/2);
  noLoop();
}

void mouseClicked(){
  redraw();
}