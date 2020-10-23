void tekenKnop(int x, int y, int breedte, int hoogte, String Label, int kleur) {
  fill(kleur);
  rect(x, y, breedte, hoogte);
  textAlign(CENTER, CENTER);
  fill(0); //kleur van de tekst
  text(Label, x + breedte/2, y + hoogte/2);
}


boolean isMuisBoven (int  x, int y, int breedte, int hoogte) {
  return mouseX > x && mouseX < x + breedte && mouseY > y && mouseY < y+ hoogte;
}
