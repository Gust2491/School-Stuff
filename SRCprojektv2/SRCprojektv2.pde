Table table;
ArrayList<Main> allMains = new ArrayList<Main>();



void setup(){
 
size(1800,1000);


table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv","header");
 fill(0);
 for(TableRow r: table.rows()){
  String state = r.getString("state");
  int deaths = r.getInt("deaths");
  int cases = r.getInt("cases");
  String lUpdate = r.getString("date");
  allMains.add(new subFuck(state, deaths, cases, lUpdate));
  }
  println(allMains.get(0).state);
  println(allMains.get(allMains.size()-1).state);
 }
  
void draw(){
  for(Main x:allMains){
    x.bringData(); 
  }
 //.bringData();
  //death.display();
  /*
for(TableRow r: table.rows()){
  String state = r.getString("state");
  int deaths = r.getInt("deaths");

println(state, deaths);

*/
}
