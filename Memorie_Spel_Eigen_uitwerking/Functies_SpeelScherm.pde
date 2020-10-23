int komtVoorInArray(int array[][], int teVinden) {
  int aantal = 0;
  for (int i = 0; i < array.length; i++) {
    aantal = aantal + komtVoorInArray(array[i], teVinden);
  }
  return aantal; //hoe vaak een item voorkomt in 2D array
}

int komtVoorInArray(int array[], int teVinden) { //tellen van de items
  int aantal = 0;
  for (int i = 0; i < array.length; i++) {
    if (teVinden == array[i]) { 
      aantal ++ ; //zit in de array
    }
  }
  return aantal; //zit niet in de array
}

void vulKaartenPosities() {
  //                         = y positie               = x positie
  kaartenPosities = new int [aantalKaartenHorizontaal][aantalKaartenVerticaal];
  for (int y = 0; y < kaartenPosities.length; y++) { //vullen y Positie aantalKaartenHorizontaal
    vulkaartenPositieRij(y);
  }
}

void vulkaartenPositieRij(int y) {
  for (int x = 0; x < kaartenPosities[y].length; x++) { //vullen x positie van AantalKaartenVerticaal
    vulKaartenPositieXY(x, y);
  }
}

void vulKaartenPositieXY(int x, int y) { // shuffelen van Kaarten
  int kaart = floor( random(0, aantalSets) );
  while (komtVoorInArray(kaartenPosities, kaart) >= MAXIMAAL_VOORKOMEN) {
    kaart = floor ( random(0, aantalSets) );
  } 
  kaartenPosities[y][x] = kaart;
}


void tekenRijKaarten(int y) { //roept 5x tekenKaart aan in totaal tekenkaart wordt 25x aangeroepen.
  for (int x = 0; x < aantalKaartenVerticaal; x++) {
    tekenKaart(x, y);
  }
}

void tekenKaarten() {
  for (int y = 0; y < aantalKaartenHorizontaal; y++) { // y = y positie! //roept 5x tekenRijkaarten aan
    tekenRijKaarten(y);
  }
}

void tekenKaart(int x, int y) { // * breedte of hoogte, margeimage(kaarten[ kaartenPosities[y][x] ], 10 + 15, 10 + 15);
 image(kaarten[ kaartenPosities[y][x] ], 10 + 15, 10 + 15);
 
}

void tekenDoodsKaart() {
}
