final int STARTSCHERM = 1;
final int SPEELSCHERM = 2;
final int EINDSCHERM = 3;

int beeldscherm = EINDSCHERM;

void setup(){
size(1000, 1000);

}



void draw(){
  switch(beeldscherm){
  case STARTSCHERM:
  toonbeginscherm();
  break;
  
  case SPEELSCHERM:
  toonSpeelscherm();
  break;
  
  case EINDSCHERM:
  toonEindscherm();
  break;
}
  
  
} 


void mousePressed(){
    switch(beeldscherm){
  case STARTSCHERM:
  verwerkKlikStartscherm();
  break;
  
  case SPEELSCHERM:
  //verwerkKlikSpeelscherm();
  break;
  
  case EINDSCHERM:
  verwerkKlikEindscherm();
  break;
  
}
}
