import processing.javafx.*;


PImage[] gif;
int NumOfFrame;
int f;
int counter;
float angle;


void intro() { //=======================================================================================
  size(1000, 800, FX2D);
  theme.play();
  
//animated gift
  NumOfFrame = 8;
  gif = new PImage[NumOfFrame];
  
  int i = 0;
  while (i < NumOfFrame) {
    gif [i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i++; }
  
//modulus of mod
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == NumOfFrame) f=0;
  
//text
  textSize(200);
  textAlign(CENTER, CENTER);
  textFont(LemonYellow);
  
//blinking
  counter = counter + 1;
  if(counter < 8) {fill(#ffff00);}
  if(counter > 8) {fill(#b89000);}
  if(counter == 10) {counter = 0;}
  text("Color", 500, 200);
  text("Theory", 500, 400);

//click
  if(mouseX > 350 && mouseX < 650 && mouseY > 580 && mouseY < 620) {
  textSize (100);
  click.play();
  } else {
    textSize(50);
  }
  text("click to start", 500, 600); 
} //==================================== end of intro ==================================================



void introClicks() {
  if (mouseX > 350 && mouseX < 650 && mouseY > 580 && mouseY < 620){
    mode = GAME;
    newcolor();
    reset();
    score = 0;
    click.rewind();
    click.play();
  }
}
