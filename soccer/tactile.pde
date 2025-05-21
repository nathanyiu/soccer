void recTact(int x, int y,int wid, int hei, int col) {
  if (mouseX > x && mouseX < x + wid && mouseY > y && mouseY < y + hei) {
    stroke(255); 
  } else {
    if (col == 1) {
      stroke(255,0,0); 
    }
  }
}
void cirTact(int x, int y, int d, String col) {
}
