//color
color red = #FF595E;
color blue = #1982C4;
color yellow = #FFCA3A;
color purple = #6A4C93;
color green = #8AC926;

//true or false
boolean isitmatch;
boolean myanswer;
String[] words = {"RED", "GREEN", "BLUE", "YELLOW", "PURPLE"};
color[] colors = {red, green, blue, yellow, purple};
int rc, rw;

//score
int score = 0;
int highScore;
int timer;
float scale = 0;


void game() { //====================================================================================================
  theme.pause();
  
//background  
  fill(0);
  rect(0, 0, 500, 800);
  fill(225);
  rect(500, 0, 500, 800);
//text  
  textSize(100);
  textAlign(CENTER, CENTER);
  textFont(BlueEye);
  text("Match", 250, 200);
  fill(0);
  text("Don't", 750, 150);
  text("Match", 750, 300); 

//first
  newcolor();
  isitmatch =(rc == rw);
  
//score
  fill(#9999a1);
  textSize(100);
  text("score :" + score, 500, 700);

//out of time 
  if (scale > 4.5) {
     mode = GAMEOVER;
     gameover.play();
  }
} //==================================================== end of game ===================================================



void gameClicks() {
//define myanswer 
  myanswer = (mouseX > 0 && mouseX < 500 && mouseY >0 && mouseY < 800);

//is the color and the text matches  
  isitmatch =(rc == rw);
  
//true or false
   if (isitmatch == true) {
      if(myanswer == true){
         newcolor();
         reset();
         score ++;
         scorem.play(); 
         scorem.rewind();
      } else if (myanswer == false) {
          mode = GAMEOVER;
          gameover.play();
  }
}
  
  if (isitmatch == false) {
      if(myanswer == false){
        newcolor();
        reset();
        score ++;
        scorem.play(); 
        scorem.rewind();
      } else if (myanswer == true) {
        mode = GAMEOVER;
        gameover.play();
    }  
  }
} // ================================================= end of game =================================================


void gametext(int x, int y) {
  pushMatrix();
  translate(x, y);
  rotate(angle);
  scale(scale);
  textSize(100);
  fill(colors[rc]);
  text(words[rw], 0, 0);
  popMatrix();
}

void reset() {
  rc = int(random(0, 5));
  rw = int(random(0, 5));
  random2();
  angle = 0;
  scale = 0;
}
void newcolor () {
  angle = angle + 0.1;
  scale = scale +0.02;
  gametext(width/2, height/2);
}
