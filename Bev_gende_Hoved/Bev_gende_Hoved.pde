//Variables
int x = 30;
int y = 70;

//Setup
void setup() {
 size(800,800);
}

//Cirkel
void draw(){
  clear();
  background(255,255,255);
  fill(255,204,153);
  
//hastighed/bevægelse
  x = x+2;
  y = y+2;
 
//figurer
 circle(50+x,50+x,100);
 fill(255,255,255);
 circle(30+x,30+x,20);
 circle(70+x,30+x,20);
 fill(0,0,0);
 circle(30+x,30+x,8);
 circle(70+x,30+x,8);
 fill(242,133,79);
 arc(50+x,70+x,70,30,0,180);
}
