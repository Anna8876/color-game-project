PImage[] gif2;
int numofframe2;
int g;


void gameover () { // ========================================================================================
  background(#293241);
  theme.pause();
  gameover.play();

//animated gif
  numofframe2 = 26;
  gif2 = new PImage[numofframe2];
  
  int x = 0;
  while (x < numofframe2) {
    gif2 [x] = loadImage("frame_"+x+"_delay-0.1s.gif");
    x++; }
  
  image(gif2[g], 0, 250, width, 450); g++;
  if (g == numofframe2) g=0;


//text
  textAlign(CENTER, CENTER);
  textFont(CreamCake);
  textSize(50);
  tactile(400, 470, 220, 75 );
  rect(400, 470, 220, 75 ,20);
  fill(#C0404F);
  text("RESTART" , 500, 500);
  
  textFont(CreamCake);
  textSize(300);
  fill(#C0404F);
  text("GameOver" , 500, 100);
  
  textFont(CreamCake);
  textSize(300);
  fill(#EFDABF);
  text("GameOver" , 505, 105);
  
  textFont(CreamCake);
  textSize(50);
  fill(#C0404F);
  text("score:" + score, 200, 740);
  text("highest score:" + highScore, 600, 740);
  
  if (score>highScore) {
    highScore=score;
  }
  
//exit
  tactile(850, 720, 125, 50);
  rect(850, 720, 125, 50, 10);
  textFont(CreamCake);
  textSize(40);
  fill(#EFDABF);
  text("EXIT" , 900, 740);

} // ========================================== end of gameover ===================================================



void gameoverClicks() {
  if (mouseX > 400 && mouseX < 620 && mouseY >470 && mouseY < 545){
    score = 0;
    reset();
    click. play();
    click.rewind();
    gameover.pause();
    mode = GAME;
  }
  
  if (mouseX > 850  && mouseX < 975 && mouseY > 720 && mouseY < 770) {
    mode = INTRO;
    click. play();
    click.rewind();
    gameover.pause();
    theme.play();
  }
  
}
