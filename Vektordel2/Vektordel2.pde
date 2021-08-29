Mover m1 = new Mover();
Attractor a = new Attractor();
void setup(){
size(600,600);
background(255);
}
/*
void Attraction(Mover n, Attractor g){
  PVector f = new PVector(0.1,0);
  n.applyForce(f);
}
*/
void draw(){
  PVector wind = new PVector(1,0);
m1.display();
m1.update();
//m1.applyForce();
//Attraction(m1,a);
PVector f = a.attract(m1);
m1.applyForce(f);

a.display();


}
