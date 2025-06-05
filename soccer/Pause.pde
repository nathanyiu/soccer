void Pause() {
  stroke(0);
  strokeWeight(2);
  if (i < pauseBack)  {
    noStroke();
    fill(58,201,57,120);
    rect(0,0,1200,880);
    i++;
  } if (Mode == Game) {
    i = 0; 
  }
  if (dist(mouseX,mouseY,300,700)<62.5) {
    stroke(255);
  } else {
    stroke(0); 
  }
  fill(255,0,0);
  circle(300,700,125);
  stroke(0);
  fill(255);
  rect(260,685,80,50);
  triangle(250,685,350,685,300,655);
  //pause
  if (dist(mouseX,mouseY,600,700)<100) {
    stroke(255);
  } else {
    stroke(0); 
  }
  fill(0,0,255);
  circle(600,700,200);
  stroke(0);
  fill(255);
  rect(560,650,25,100);
  rect(615,650,25,100);
  pauseLetters();
}
