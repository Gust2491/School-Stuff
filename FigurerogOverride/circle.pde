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
