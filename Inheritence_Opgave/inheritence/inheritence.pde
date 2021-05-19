SpinSpots spots;
SpinArm arm;
SpinSq sq;

void setup() {
  size(640, 360);
  arm = new SpinArm(width/2, height/2, 0.01);
  spots = new SpinSpots(width/2, height/2, -0.02, 90.0);
  sq = new SpinSq(0,0,-0.02);
}

void draw() {
  background(204);
  arm.update();
  arm.display();
  spots.update();
  spots.display();
  sq.update();
  sq.display();
  
}
class Spin {
  float x, y, speed;
  float angle = 0.0;
  Spin(float xpos, float ypos, float s) {
    x = xpos;
    y = ypos;
    speed = s;
  }
  void update() {
    angle += speed;
  }
}


class SpinArm extends Spin {
  SpinArm(float x, float y, float s) {
    super(x, y, s);
  }
  void display() {
    strokeWeight(1);
    stroke(0);
    pushMatrix();
    translate(x, y);
    angle += speed;
    rotate(angle);
    line(0, 0, 165, 0);
    popMatrix();
  }
}

class SpinSpots extends Spin {
  float dim;
  SpinSpots(float x, float y, float s, float d) {
    super(x, y, s);
    dim = d;
  }
  void display() {
    noStroke();

    translate(x, y);
    angle += speed;
    rotate(angle);
    ellipse(-dim/2, 0, dim, dim);
    ellipse(dim/2, 0, dim, dim);

  }
}

 class SpinSq extends Spin {
 SpinSq (float x, float y, float s){
  super(x,y,s); 
 }
 void display(){

 rotate(angle);
 rect(0,0,100,100);  


 }
}
  
  
