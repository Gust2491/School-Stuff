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

class Figur {
 float x, y, e;
 Figur(float xpos, float ypos, float esize){ 
   x=xpos;
   y=ypos;
   e=esize;
    }
 void displayspec(){
    }
 void display(){
  displayspec();
    }
 void move(){
   x+=random(0,1);
   y+=random(0,1);
 if(y>400||x>400){
   y--;
  }
 }
}

class cirkel extends Figur {
  cirkel(float xpos, float ypos, float esize){
  super (xpos,ypos,esize);
    }
  void displayspec(){
    rect(x-50,y-50,e-50,e-50);
    circle(x,y,e); 

  }
void displayspec(float extraS){
  circle(x,y,e*extraS);
 }
}

class square extends Figur {
 square(float xpos, float ypos, float esize){
    super(xpos,ypos,esize);
    //fill(random(0,255));
    }
void displayspec(){
  rect(x,y,e,e);
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
