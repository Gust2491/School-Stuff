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
      
        rect(170, y, x, 10);  
        rect(170, y, x+c, 10);
      }else{
        rect(170,y,2,10);
      }
      textSize(15);
      text(state,0,y+8);
      text(cases + " Deaths, Cases", x+c+175, y+10);
       
  }
  }
  void display(){
  
  }
 }
