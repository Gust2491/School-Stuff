class DataOPB{
  float x,y,c;
  int id;
  String state = "";
  int deaths = 0;
  int cases = 0;
  String lUpdate = "";
  
  DataOPB(String state_,int deaths_, int cases_, String lUpdate_, int stateid_){
    state = state_;
    deaths = deaths_;
    cases = cases_;
    lUpdate = lUpdate_;
    id = stateid_;
  }

 void TegnDiagram(){
 }
}
