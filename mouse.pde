
void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
  stroke(#A9C1D9);
  strokeWeight(10);
  } else {
    
  stroke(#FF947A);
  strokeWeight(5);
  }
}// === end of tactile ===========================================

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}

void random2() { 
  if (boolean(floor(random(2)))) {
    rc = rw = floor(random(5));
  } else { 
    while (true) {
      rc = floor(random(5));
      rw = floor(random(5));
      if (rc != rw) break;
    }
  }
}
