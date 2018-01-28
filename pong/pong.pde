
PImage backgroundImage;         //at the top of your sketch

import ddf.minim.*;       //at the very top of your sketch
Minim minim;        //at the top of your sketch
  AudioSample sound;

int a = 0;
int x = 10;
  int y =200;
int speed = 5;

void setup(){
  backgroundImage = loadImage("pong.jpg");  //in the setup method
  size(400,400);
    minim = new Minim (this);    //in the setup method
  sound = minim.loadSample("pong.wav", 128);

  
}
void draw(){
  y+=a;
      image(backgroundImage, 0, 0);
      image(backgroundImage, 0, 0, 400, 400);    //if you want to resize
rect(1,mouseY,5,50);
  //background(134,133,133);
  ellipse(x,y,10,10);
  fill(random(255), random(255), random(255));
  stroke(0,0,0);
  x+=speed;
    if(intersects(x,y,1,mouseY,50)){
      if(y >200){
        a = 1;
      }
      else if(y<200);
      a = 1;
    }

    
  
  if(x >=400){
    speed = -5;
    sound.trigger();
    a = 1;
  }
  if(x<=0){
    speed = 5;
     sound.trigger();
     a = 1;
  }
  if(y>=400){
    sound.trigger();
    a = -1;
  }
  if(y<=0){
      sound.trigger();
      a = -1;
  }
  
  
  
}boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX == paddleX && ballY < paddleY + paddleLength)
return true;
else 
return false;
}