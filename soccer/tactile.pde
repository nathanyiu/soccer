void ballSpeedRect(float x, float y) {
  noFill();
  rect(x,y,58,58);
}
void circleTact(int x,int y, int d) {
   if (dist(x,y,mouseX,mouseY) < d) {
     stroke(255); 
   } else {
     stroke(0); 
   }
}
