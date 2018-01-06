int a = 0;
float x = 0;
float y = 0;
float r = 0;
float g = 0;
float b = 0;
int i = 0;
void setup(){
size(900,900);
background(0,0,0);
  
  
}

void draw(){
  
  makeMagical();
  x = random(900);
  y = random(900);
  r = random(255);
  g = random(255);
  b = random(255);
for(int i  = 0; i<=a; i++){
    fill(r,g,b);
    ellipse(getWormX(i),getWormY(i),random( 8),random(8));
  }
}



float frequency = random(.008);
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount%255 * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}
void mousePressed(){
a+=90;
  //x = random(400);
  ///y = random(400);
 // r = random(255);
 // g = random(255);
 // b = random(255);


}