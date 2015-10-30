Sequence sequence;
int n=10;
void setup(){
  sequence = new Padovan();
  size(500,500);
  println(sequence.toString(n));
}

void draw() {
  background(0,0,0);
  sequence.display(n);
}