int aantalSets = 12;
//int aantalkaarten = aantalSets * 2;

PImage[] kaarten;
 
    
void vulKaartenArray(){
  kaarten = new PImage[aantalSets];
   for (int i = 0; i < kaarten.length; i++){
     String kaartNaam = "kaart" + i + ".jpg";
     kaarten[i] = loadImage(kaartNaam);
   
   }
   
  
}
  

   
