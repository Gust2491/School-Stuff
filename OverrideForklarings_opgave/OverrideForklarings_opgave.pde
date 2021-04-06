//Forklarings Opgave

//7 Det nedefor er et eksempel på polymorfi, hvor flere objekter er sat ind i en array
//7 Og derfra kan man få alle objekter til at udføre samme metoder i dette tilfælde display() og move()
///////////////////////////////////////////////////////////
//ArrayList<Figur> figurListe = new ArrayList<Figur>();

//void setup(){
// size(500,500);
//}  

//void draw(){
  //clear();
 // background(255);
  //for(Figur d : figurListe){
   // d.display();
   // d.move(); 
// }
//}
////////////////////////////////////////////////////////////

SpinSpots spots;
SpinArm arm;
//13 Et scope ses som alt mellem {} Dette scope går derfor herfra og til linje 11
void setup() {
  size(640, 360);
//1 Dette er objekterne arm og spots lavet ud fra klasserne SpinArm og SpinSpots
//8 Det er nogle konstruktører som opretter objektet, og tager højde for de parametre der er skrevet som variabler.
  arm = new SpinArm(width/2, height/2, 0.01);
  spots = new SpinSpots(width/2, height/2, -0.02, 90.0);
} //13 scopet slutter her

//10 her ses en retur-type "void" den gør at der ikke retuneres en værdi
//10 Der kan dog også være retur-typer som er int,float,string osv.
void draw() {
  background(204);
  arm.update();
  arm.display(); 
  spots.update();
  spots.display();
  
}
//1 Dette er klassen Spin 
class Spin {
//3,4 Her er en Float type variable?
  float x, y, speed;
  float angle = 0.0;
//4,9 Spin er en metode som kan udføres af Spin objekter. Der er 3 lokale variabler inde i metoden
  Spin(float xpos, float ypos, float s) {
    x = xpos; //2 dette er vel en reference der siger at variable "x" skal tage "xpos" værdi.
    y = ypos;
    speed = s;
  }
  void update() {
    angle += speed;
  }
   void displayspec(){
  
  }
  void display(){
   pushMatrix();
   translate(x, y);
   angle += speed;
   rotate(angle);
   displayspec();
   popMatrix();
  }
 
}
//6 Her nedarver Klassen Spin alt fra SpinArm
class SpinArm extends Spin {
  SpinArm(float x, float y, float s) {
    super(x, y, s);
  }
//12 Her bruges override til at overskrive metoden displayspec() fra hovedklassen Spin
  void displayspec() {
    strokeWeight(1);
    stroke(0);
    line(0, 0, 165, 0);
  }
}

class SpinSpots extends Spin {
  float dim;
  SpinSpots(float x, float y, float s, float d) {
    super(x, y, s);
    dim = d;
  }
//12 Override igen
  void displayspec() {
    noStroke();
    ellipse(-dim/2, 0, dim, dim);
    ellipse(dim/2, 0, dim, dim);
  }
}
