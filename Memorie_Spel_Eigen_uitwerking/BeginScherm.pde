int[] knoppenlijst = {300, 800, 100, 100, 3, #FFFFFF}; //x, y, breedte, hoogte,Npositie, kleur
int[] startknop = {knoppenlijst[0], knoppenlijst[1], 400, knoppenlijst[2], knoppenlijst[3]};

void toonbeginscherm(){
  background(0);
  tekenKnop(startknop[0], startknop[1], startknop[2], startknop[3], "Start", #ffff00);
  
}

void verwerkKlikStartscherm(){
  if (isMuisBoven(startknop[0], startknop[1], startknop[2], startknop[3])){
    vulKaartenArray();
    vulKaartenPosities();  
 beeldscherm = SPEELSCHERM;
 

 
}

}
