class Attractor {
  // Our Attractor is a simple object that doesn’t move.
  // We just need a mass and a location.
  float mass;
  PVector location;

  Attractor() {
    location = new PVector(width/2,height/2);
    mass = 10;
  }
PVector  attract(Mover n){
  // What’s the force’s direction?
  PVector force = PVector.sub(location,n.location);
  float distance = force.mag();
    distance = constrain(distance,5,25);
  force.limit(100);
  force.normalize();
  //[offset-down] What’s the force’s magnitude?
  float strength = (0.1 * mass * n.mass) / (10 * distance);
  force.mult(strength);


  // Return the force so that it can be applied!
  return force;

}
  void display() {
    stroke(0);
    fill(175,200);
    ellipse(300,300,mass*2,mass*2);
  }
}
