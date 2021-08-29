class Mover {
  PVector Center;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  Mover(float x,float y) {
    location = new PVector(300,300);
    velocity = new PVector(x,0);
    acceleration = new PVector(0,0);
    topspeed = 20;
    Center = new PVector(300,400);
  }

  void update() {
    PVector mouse1 = new PVector(300,300);
    PVector dir = PVector.sub(mouse1,Center);
   dir.normalize();
  //  dir.mult(0.5);
   acceleration=dir;
    //[full] Velocity changes by acceleration and is limited by topspeed.
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    Center.add(velocity);
  }
  void display(float xx){
   ellipse(location.x,location.y,xx,xx); 
  }
  
}
