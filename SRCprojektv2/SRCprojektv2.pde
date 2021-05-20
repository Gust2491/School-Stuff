Table table;
ArrayList<DataOPB> altData = new ArrayList<DataOPB>();
int stateid = 1;

InfoPanel Infos = new InfoPanel("Deaths","Cases", 255,255,0,255,0,0);

void setup(){
size(1800,950);
table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv","header");

 fill(0);
 for(TableRow r: table.rows()){
   String state = r.getString("state");
   int deaths = r.getInt("deaths");
   int cases = r.getInt("cases");
   String lUpdate = r.getString("date");
   altData.add(new VisDiagram(state, deaths, cases, lUpdate, stateid));
    stateid++;
  }
}
  
void draw(){
  clear();
  background(255);
   for(DataOPB x:altData){
    x.TegnDiagram();
  }
  Infos.display();
 }
