import ddf.minim.*;       //at the very top of your sketch
Minim minim;        //at the top of your sketch
  AudioSample sound;


int x = 10;
  int y =200;
int speed = 5;

void setup(){
  size(400,400);
    minim = new Minim (this);    //in the setup method
  sound = minim.loadSample("pong.wav", 128);

  
}
void draw(){
  sound.trigger();    
  background(134,133,133);
  ellipse(x,y,10,10);
  fill(random(255), random(255), random(255));
  stroke(0,0,0);
  x+=speed;
  if(x >=400){
    speed = -5;
  }
  if(x<=0){
    speed = 5;
  }
  if(y>=400){
    
  }
  if(y>=0){
    
  }
  
  
}