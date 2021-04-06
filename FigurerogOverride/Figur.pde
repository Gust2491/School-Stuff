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
