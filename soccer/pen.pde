void pen() {
  background(58, 201, 57);
  environment(); 
}
void environment() { 
  
  fill(131, 199, 28);
  rect(-10,440,1300,440);
  noFill();
  
  strokeWeight(10);
  rect(350,255,500,190);
  
  strokeWeight(3);
  fill(131,199,28);
  quad(250,440,950,440,1150,650,50,650);
  stroke(255);
  line(0,440,1200,440);
  fill(255);
  strokeWeight(1);
  circle(600,600,15);
  noFill();
  rect(400,285,400,140);
}
