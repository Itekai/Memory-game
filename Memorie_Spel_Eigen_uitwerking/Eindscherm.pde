int[] OpnieuwSpelenKnop = {knoppenlijst[0], knoppenlijst[1], 400, knoppenlijst[2], knoppenlijst[3]};

void toonEindscherm() {
  background(255);
  tekenKnop(OpnieuwSpelenKnop[0], OpnieuwSpelenKnop[1], OpnieuwSpelenKnop[2], OpnieuwSpelenKnop[3], "Opnieuw Spelen", #ffff00);
}

void verwerkKlikEindscherm() {
  if (isMuisBoven(OpnieuwSpelenKnop[0], OpnieuwSpelenKnop[1], OpnieuwSpelenKnop[2], OpnieuwSpelenKnop[3])) {
    beeldscherm = STARTSCHERM;
  }
}
