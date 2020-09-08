int rad = 20;        
float xpos, ypos;    

float xspeed = 2.8;  
float yspeed = 2.2;  

int xdirection = 1;  
int ydirection = 1;  
float rectxsize = width;
float rectysize = height;

void setup() 
{
  size(600, 600);
  rectMode(CENTER);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
 
  xpos = 300;
  ypos = 300;
}

void draw() {
  background(102);
    clear();
  background(0);  

 noFill();
 stroke(255);
 rect(300,300, width,height);
width = width -1;
  height = height - 1;
  
  
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
 
  if (xpos > width-rad || xpos < -width + rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

  fill(255);
  ellipse(xpos, ypos, rad, rad);
}
