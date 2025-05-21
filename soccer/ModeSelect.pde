void modeSelect() {
  introBack();
  //textFont(mode);
  fill(0, 0, 255);
  textSize(50);
  text("Select a Mode:", 435, 100);
  strokeWeight(2);
  stroke(0, 0, 255);
  line(400, 120, 775, 120);
  stroke(255, 0, 0);
  fill(0);
  if (gameMode == 1) {
    stroke(255);
  } else {
    stroke(0);
  }
  rect(200, 160, 300, 230, 20);
  stroke(255);
  fill(131, 199, 28);
  rect(210, 170, 280, 160);
  circle(350, 250, 40);
  line(350, 170, 350, 330);
  rect(210, 220, 20, 60);
  rect(470, 220, 20, 60);

  stroke(0);
  fill(255, 0, 0);
  circle(280, 220, 20);
  circle(260, 290, 20);
  fill(0, 0, 255);
  circle(350, 270, 20);
  circle(430, 230, 20);
  fill(255);
  text("Match", 285, 380);
  if (gameMode == 2) {
    stroke(255);
  } else {
    stroke(0);
  }
  fill(0);
  rect(700, 160, 300, 230, 20);

  fill(0, 0, 255);
  text("Modification:", 460, 450);
  stroke(0, 0, 255);
  line(435, 470, 765, 470);
  mod();
}
void mod() {
  fill(0);
  textSize(30);
  stroke(0);
  text("Player Speed", 145, 560);
  fill(255, 0, 0);
  circle(375, 550, 50);
  line1 = map(vx,-1,-11,345,315);
  line2 = map(vx,-1,-11,350,325);
  line(line1, 550, 345, 550);
  line(line2, 530, 350, 530);
  line(line2, 570, 350, 570);
  noFill();
  //fill(0);
  rect(435, 530, 40, 40);
  stroke(0);
  line(445, 550, 465, 550);
  
  rect(725, 530, 40, 40);
  line(735, 550, 755, 550);
  line(745, 540, 745, 560);
  fill(0);
  rect(495, 545, 210, 10, 150);
  noStroke();
  fill(255);
  circle(moveCircle, 550, 25);
  if (moveCircle <= 495) {
    moveCircle = 495; 
  }
  if (moveCircle >= 705) {
    moveCircle = 705; 
  }
  vx = map(moveCircle, 495,705,-1,-10);
  vx = (int)vx;
  fill(0);
  text((int)abs(vx),790,560,30);
  
  //ball speed
  text("Ball Speed", 175,650);
  pushMatrix();
  translate(0,90);
  stroke(0);
  strokeWeight(2);
  fill(255, 0, 0);
  circle(375, 550, 50);
  line3 = map(ballSpeed,0.1,1,345,315);
  line4 = map(ballSpeed,0.1,1,350,325);
  line(line3, 550, 345, 550);
  line(line4, 530, 350, 530);
  line(line4, 570, 350, 570);
  noFill();
  //fill(0);
  rect(435, 530, 40, 40);
  stroke(0);
  line(445, 550, 465, 550);
  
  rect(725, 530, 40, 40);
  line(735, 550, 755, 550);
  line(745, 540, 745, 560);
  fill(0);
  rect(495, 545, 210, 10, 150);
  noStroke();
  fill(255);
  circle(ballCircle, 550, 25);
  if (ballCircle <= 495) {
    ballCircle = 495; 
  }
  if (ballCircle >= 705) {
    ballCircle = 705; 
  }
  ballSpeed = map(ballCircle, 495,705,0.1,1);
  ballSpeed = (int)(ballSpeed * 10);
  fill(0);
  text(ballSpeed/10,790,560,30);
  popMatrix();
}
