
void setup(){
size(500,500);
rectMode(CENTER);
}


void draw(){
  clear();
 
for(int x = 50 ;x < 475;x+=50){
  for(int y = 50; y < 475;y+=50){
    float xx = random(50, 50);
    fill(random(0,0),random(0,255),random(0,0));
 rect(x,y,xx,xx);
 }
}   
  
}
