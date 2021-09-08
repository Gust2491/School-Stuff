int[] talListe = {2,5,6,8,1,3,11,50,20,69};
void setup(){

listSort(talListe);
println("-");
println(talListe);
}

void listSort(int[] array){

int n = 0;

while(n!=array.length){
  

int x = array[n];
int holder;
for(int i = n;i<array.length;i++){
  if(array[i]<x){
  holder = x;
  array[n]=array[i];
  array[i] = holder;
 if(i != 0){
 n--;
 }
 break;
  } 
}
 if(n==array.length-1){
  
   break; 
 } else {
   n++;
 }
}

}
