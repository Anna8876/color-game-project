//Anna fan
//sep 21, 2022
//true color game project

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variable
Minim minim;
AudioPlayer theme, click, scorem, lose, gameover;

//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//font
PFont BlueEye;
PFont LemonYellow;
PFont CreamCake;


void setup() {//=====================================================================================================
  size(1000, 800, FX2D);
  mode = INTRO;
  
//Font
  BlueEye = createFont ("Blue Eyes - Personal Use.otf", 200);
  LemonYellow = createFont ("DK Lemon Yellow Sun.otf", 200);  
  CreamCake = createFont ("Cream Cake.ttf", 200);

//minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  click = minim.loadFile("click.mp3");
  scorem = minim.loadFile("score.mp3");
  lose = minim.loadFile("lose.mp3");
  gameover = minim.loadFile("gameover.mp3");
  
//initial variable
  smooth(8);
} //==================================================== end of setup ================================================



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }  
}
