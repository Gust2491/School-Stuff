Table table;
Main deaths = new Main();
void setup(){
 
size(1800,1000);


table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv","header");
 table.setColumnType(1, Table.STRING);
      fill(0);
}

void draw(){
  
  deaths.bringData();
  deaths.display();
  /*
for(TableRow r: table.rows()){
  String state = r.getString("state");
  int deaths = r.getInt("deaths");

println(state, deaths);

*/
}
