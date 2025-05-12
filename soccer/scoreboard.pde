void scoreboard(int teamA, int teamB) {
  noStroke();
  rect(450, 0, 300, 190);
  fill(0);
  rect(460, 10, 130, 170);
  rect(610, 10, 130, 170);
  fill(255, 0, 0);
  stroke(255, 0, 0);
  strokeWeight(0);
  if (scoreA > 9) {
    scoreA %= 10; 
  }
  if (scoreB > 9) {
    scoreB %= 10; 
  }
  if (teamA == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  }
  else if (scoreA == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  }
  else if (scoreA == 2){
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  }
  else if (scoreA == 3){
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  else if (scoreA == 4){
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  }
  else if (scoreA == 5){
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  }
  else if (scoreA == 6){
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  }
  else if (scoreA == 7){
    top(1);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  }
  else if (scoreA == 8){
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  else if (scoreA == 9){
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  pushMatrix();
  translate(150,0);
  if (teamB == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  }
  else if (teamB == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  }
  else if (teamB == 2){
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  }
  else if (teamB == 3){
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  else if (teamB == 4){
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  }
  else if (teamB == 5){
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  }
  else if (teamB == 6){
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  }
  else if (teamB == 7){
    top(1);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  }
  else if (teamB == 8){
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  else if (teamB == 9){
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  popMatrix();
}
void top(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  rect(490, 15, 70, 15);
  triangle(490, 15, 490, 30, 475, 15);
  triangle(560, 15, 560, 30, 575, 15);
}
void topL(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(475, 32, 490, 32, 475, 17);
  rect(475, 32, 15, 46);
  triangle(475, 78, 490, 78, 482.5, 93);
}
void BottomL(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(482.5, 97, 475, 112, 490, 112);
  rect(475, 112, 15, 46);
  triangle(475, 158, 490, 158, 475, 173);
}
void Bottom(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(490, 160, 475, 175, 490, 175);
  rect(490, 160, 70, 15);
  triangle(560, 160, 560, 175, 575, 175);
}
void BottomR(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(560, 158, 575, 173, 575, 158);
  rect(560, 112, 15, 46);
  triangle(560, 112, 575, 112, 567.5, 97);
}
void topR(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(567.5, 93, 560, 78, 575, 78);
  rect(560, 32, 15, 46);
  triangle(560, 32, 575, 32, 575, 17);
}
void mid(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  rect(500, 87.5, 50, 15);
  triangle(500, 87.5, 500, 102.5, 485, 95);
  triangle(550, 87.5, 550, 102.5, 565, 95);
}
