Sequence sequence;
int n=25,a=0;
void setup(){
  sequence = new Padovan();
  size(500,500);
  println(sequence.toString(n));
}

void draw() {
  background(0,0,0);
  if (a==1)
  sequence.display(n);
  else{
    sequence.barChart(n);
    sequence.lineChart(n);
    sequence.curveFitting(n);
  }
}

void mouseClicked(){
  if (a == 0) {
    a = 1;
  } else {
    a = 0;
  }
  
}