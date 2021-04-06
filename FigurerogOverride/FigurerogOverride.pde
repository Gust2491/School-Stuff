ArrayList<Figur> figurListe = new ArrayList<Figur>();

void setup(){
  size(500,500);
}  

void draw(){
  clear();
  background(255);
  for(Figur d : figurListe){
    d.display();
    d.move(); 
 }
}


void keyPressed(){
  Figur d;
  if(key=='a'){
    d = new cirkel(random(0,450),random(0,450),100);
    figurListe.add(d);
  }
  if(key=='b'){
    d = new square(random(0,450),random(0,450),100);
    figurListe.add(d);
  }
}
