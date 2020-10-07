//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast
int antalKast = 30;
int[] terningslag = new int[antalKast];
int kastBrugt = 0;

int ettere = 0;
int toere = 0;
int treere = 0;
int firer = 0;
int femere = 0;
int seksere = 0;
  

void setup() {
  size(600, 800);
  clear();
  text("TRYK på 'k' FOR AT KASTE", 50, 50);
}

void draw() {
}
int LavTerningeKast(int min, int max){
  int nyesteKast = int(random(min,max + 1));
  if(nyesteKast == 1) {
    ettere++;
  }
  if(nyesteKast == 2) {
    toere++;
  }
  if(nyesteKast == 3) {
    treere++;
  }
  if(nyesteKast == 4) {
    firer++;
  }
  if(nyesteKast == 5) {
    femere++;
  }
  if(nyesteKast == 6) {
    seksere++;
  }
  return nyesteKast; 
}

void fjernSidsteKast() {
  if (kastBrugt > 0) {
      if (terningslag[kastBrugt - 1] == 1) {
        ettere--;
      }
       if (terningslag[kastBrugt - 1] == 2) {
        toere--;
      }
       if (terningslag[kastBrugt - 1] == 3) {
        treere--;
      }
       if (terningslag[kastBrugt - 1] == 4) {
        firer--;
      } 
       if (terningslag[kastBrugt - 1] == 5) {
        femere--;
      }
       if (terningslag[kastBrugt - 1] == 6) {
        seksere--;
      }
      terningslag[kastBrugt - 1] = 0;
      kastBrugt--;
  }
}

void udskrivKast() {
  for(int i = 0; i< terningslag.length;i++) {
    if(terningslag[i]!=0){
      text("Kast "+(i+1)+": "+terningslag[i],400,(50+(i*15)));
    }
  }
}
void tegnFordeling() {
  if(kastBrugt > 0) {
    
    if(ettere >0){
      rect(5,(680-(20*ettere)),30,(20*ettere));
    }
    
    if(toere >0){
      rect(40,(680-(20*toere)),30,(20*toere));
    }
    if(treere >0){
      rect(75,(680-(20*treere)),30,(20*treere));
    }
    if(firer >0){
      rect(110,(680-(20*firer)),30,(20*firer));
    }
    if(femere >0){
      rect(145,(680-(20*femere)),30,(20*femere));
    }
    if(seksere >0){
      rect(180,(680-(20*seksere)),30,(20*seksere));
    }
    }
 }
void keyPressed() {
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);

  if (key=='k') {
  if(kastBrugt < antalKast){
    //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
    int kast = LavTerningeKast(1, 6);
    terningslag[kastBrugt]=kast;
    kastBrugt ++;
    text("DIT KAST BLEV:" + kast, 50, 75);
  }
  }

  if (key == 's') {
    //OPGAVE:  lav manglende funktion til at et terningekast
   fjernSidsteKast();
  }
  
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
  tegnFordeling();
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  udskrivKast();
}
