class Main{
 int x, y, c;
  Main(){
  }
  
  void bringData(){
    for(TableRow r: table.rows()){
      
      String state = r.getString("state");
      int deaths = r.getInt("deaths");
      int cases = r.getInt("cases");
      String lUpdate = r.getString("date");
     // println(lUpdate,cases);
      
      x = (deaths / 100);
      c = (cases / 2000);
      y += 17;
      if(x > 2){
      fill(255,0,0);
       rect(170, y, c, 10);
      fill(0,255,0);
        rect(170, y, x, 10);  
       fill(0);
     
      }else{
        rect(170,y,2,10);
      }
      textSize(15);
      text(state,0,y+8);
      text(cases + " Deaths, Cases", c+175, y+10);
       
  }
  }
  void display(){
  
  }
 }
