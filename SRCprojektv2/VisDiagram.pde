class VisDiagram extends DataOPB{
  VisDiagram(String state_,int deaths_, int cases_, String lUpdate_, int stateid_){
 super(state_,deaths_,cases_,lUpdate_, stateid_);

  }
  void TegnDiagram(){
     
     x = (deaths / 1000);
     c = (cases / 1000);
     y = id*17;
      if(x > 2){
      fill(255,255,0);
       rect(170, y, c, 10);
      fill(255,0,0);
        rect(170, y, x, 10);  
       fill(0);
     
      }else{
        fill(255,255,0);
        rect(170,y,c,10);
        fill(255,0,0);
        rect(170,y,2,10);
        fill(0);
      }
      textSize(15);
      
      text(state,0,y+8);
     text(cases + " Deaths, Cases", c+175, y+10);
  }
}
