double j = -3;
 int randomNumber = (int) random(300);  
boolean endGame = false;
double g = 0.5;
double v = 0;
int x = 300;
int y =300;
int w = 500;
int ty = (int ) random(150, 290);
int wy = (int ) random(150, 290);
int score = 0;
void setup() {
  size(600, 600);
}
void draw() {
  fill(178,145,36);
  ellipse(randomNumber,y,10,10);
  fill((int) random(0,255),(int) random(0,255),(int) random(0,255));
  ellipse(randomNumber,y,10,10);
  y += v;
  v += g;
  background(61, 67, 75);
  fill((int ) random(0, 290), (int ) random(0, 290), (int ) random(0, 290));
  ellipse(x, y, 20, 20);

  fill(0, 0, 0);
  rect(w, 0, 40, wy);
  
rect(0,580,600,20);
  
 rect(w,600-ty,40,ty);
 w += -10;
  if (w < 0) {
    w = 600;
    
     ty  =  (int) random(150, 290);
wy=(int) random(150, 290);
  }
  text(score, 50, 50);
if(w == 560){
  fill(255,255,255);
  score++;
  
}
  if (intersects(x, y, w, wy, 40)) {
    endGame = true;
  }
  if(intersects2(x,y,w,600-ty,40)){
    
    endGame = true;
}
if(intersects3(x,y,w,600-ty,40)){
    
    endGame = true;
}
  if (endGame == true) {
    fill(0, 0, 0);
    rect(00, 0, 600, 600);
    fill(255, 255, 255);
    text("u die(rip)", 299, 300);
  }

}
void mousePressed() {
  v= j;
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
  if (birdY < paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
    return true;
  else 
  return false;
}
boolean intersects2(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
  if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
    return true;
else 
  return false;
}
boolean intersects3(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
  if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
    return true;
else 
  return false;
}