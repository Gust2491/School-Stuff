class InfoPanel {
float x, y, w, h;
String a, b = "";
int c1,c2,c3;
int c11,c12,c13;
InfoPanel(String a_,String b_, int c1_, int c2_, int c3_, int c11_,int c12_, int c13_){
  a = a_;
  b = b_;
  c1 = c1_;
  c2 = c2_;
  c3 = c3_;
  c11 = c11_;
  c12 = c12_;
  c13 = c13_;
}
void display(){
  fill(200);
 rect(1420, 820, 280, 80);
 fill(c1,c2,c3);
 rect(1525,850,20,20);
 fill(c11,c12,c13);
 rect(1650,850,20,20);
 textSize(20);
 fill(0);
 text(a,1575,868);
 text(b,1450,868);

}

}
