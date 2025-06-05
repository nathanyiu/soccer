void GG() {

  if (scoreA > scoreB) {
    background(255, 0, 0);
    RWin();
  } else if (scoreB > scoreA) {
    background(0, 0, 255);
    BWin();
  } else {
    noStroke();
    fill(255, 0, 0);
    triangle(0, 0, 1200, 0, 0, 880);
    fill(0, 0, 255);
    triangle(1200, 0, 1200, 880, 0, 880);
    tied();
  }
  fill(0);
  textSize(50);
  text("Play Again?", 400, 700);

  textSize(40);
  text("Yes", 450, 800);
  text("No", 700, 800);
}

void tied() {
  pushMatrix();
  translate(10,15);
  fill(70,70,70,80);
  tiedLet();
  popMatrix();
  fill(255);
  tiedLet();
}
void tiedLet() {
  //T
  rect(275, 365, 125, 30);
  rect(322.5, 395, 30, 120);
  //I
  rect(450, 365, 125, 30);
  rect(497.5, 395, 30, 90);
  rect(450, 485, 125, 30);
  //E
  rect(625, 365, 30, 150);
  rect(655, 365, 95, 30);
  rect(655, 425, 95, 30);
  rect(655, 485, 95, 30);
  //D
  rect(800,365, 30, 150);
  rect(895, 395, 30, 90);
  rect(830, 365, 80, 30);
  rect(830, 485, 80, 30);
}



void BWin() {
  noStroke();

  pushMatrix();
  translate(10, 15);
  fill(70, 70, 70, 80);
  BWinLet();
  popMatrix();
  fill(255);
  BWinLet();
  pushMatrix();
  translate(850, 0);
  trophy(1);
  popMatrix();
}
void RWin() {
  pushMatrix();
  translate(10, 15);
  fill(80, 80, 80, 80);
  RWinLet();
  popMatrix();
  fill(255);
  RWinLet();
  trophy(0);
}
void trophy(int l) {
  fill(0);
  rect(100, 400, 200, 10);
  rect(125, 300, 150, 100);
  fill(255, 215, 0);
  rect(185, 200, 30, 100);
  fill(80, 80, 80, 80);
  rect(185, 200, 30, 55);
  fill(255, 215, 0);
  ellipse(200, 100, 160, 300);
  rect(135, 325, 130, 60);
  if (l == 0) {
    fill(255, 0, 0);
  } else {
    fill(0, 0, 255);
  }
  rect(100, 0, 200, 150);
  fill(0);
  textSize(40);
  text("#1", 170, 210);
  textSize(15);
  text("Congrats!", 150, 360);
}
void BWinLet() {
  //B
  rect(275, 385, 125, 30);
  rect(275, 265, 30, 120);
  rect(305, 325, 80, 30);
  rect(370, 355, 30, 30);
  rect(305, 265, 95, 30);
  rect(370, 295, 30, 30);
  //L
  rect(450, 385, 125, 30);
  rect(450, 265, 30, 120);
  //U
  rect(625, 265, 30, 120);
  rect(625, 385, 125, 30);
  rect(720, 265, 30, 120);
  //E
  rect(800, 265, 30, 150);
  rect(830, 265, 95, 30);
  rect(830, 325, 95, 30);
  rect(830, 385, 95, 30);
  win();
}
void RWinLet() {
  noStroke();
  rect(362.5, 265, 30, 150);
  rect(392, 265, 95, 30);
  rect(720-263, 295, 30, 40);
  rect(655-263, 335, 95, 30);
  quad(655-263, 365, 695-263, 365, 755-263, 415, 715-263, 415);
  //E
  rect(537.5, 265, 125, 30);
  rect(537.5, 295, 30, 120);
  rect(567, 385, 95, 30);
  rect(567, 325, 95, 30);
  //D
  rect(712.5, 265, 30, 150);
  rect(807.5, 295, 30, 90);
  rect(742, 265, 80, 30);
  rect(742, 385, 80, 30);
  win();
}
void win() {
  //W
  pushMatrix();
  translate(-27, 0);
  quad(275, 465, 300, 465, 312.5, 573, 287.5, 573);
  quad(312.5, 573, 337.5, 573, 352.5, 507, 327, 507);
  quad(287.5, 573, 337.5, 573, 327.5, 615, 292.5, 615);
  quad(327, 507, 335, 465, 369, 465, 377, 507);
  quad(352, 507, 377, 507, 389.5, 573, 364.5, 573);
  quad(364.5, 573, 414.5, 573, 409.5, 615, 374.5, 615);
  popMatrix();
  quad(375, 465, 400, 465, 387.5, 573, 362.5, 573);
  //I
  rect(450, 465, 125, 30);
  rect(497.5, 495, 30, 90);
  rect(450, 585, 125, 30);
  //N
  rect(625, 465, 30, 150);
  rect(720, 465, 30, 150);
  quad(655, 465, 655, 515, 720, 615, 720, 565);
  //S
  rect(800, 500+85, 125, 30);
  rect(800, 440+85, 125, 30);
  rect(800, 380+85, 125, 30);
  rect(800, 410+85, 30, 40);
  rect(895, 470+85, 30, 30);
}
