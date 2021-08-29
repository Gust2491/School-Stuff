float x, y;
Mover m1 = new Mover(10,400);
Mover m2 = new Mover(14,500);
void setup() {
  size(600,600);
}

void draw() {
  //background(0);

 // PVector mouse = new PVector(300,300);
  //PVector center = new PVector(width/2,height/2);
  //PVector acceleration = new PVector(1,10);
  //mouse.sub(center);
  m1.update();
  m2.update();
  m1.display(20);
  m2.display(10);
}
