double j = -10;
boolean endGame = false;
double g = 0.5;
double v = 0;
int x = 300;
int y = 300;
int w = 500;

int wy = (int) random(100, 400);
void setup() {
  size(600, 600);
}
void draw() {
  y += v;
  v += g;
  background(61, 67, 75);
  fill(255, 130, 5);
  ellipse(x, y, 20, 20);

  fill(0, 0, 0);
  rect(w, 0, 40, wy);
  w += -10;
  if (w < 0) {
    w = 600;
    wy = (int) random(100, 400);
  }

  if (intersects(x, y, w, wy, 40)) {
    endGame = true;
  }
  if (endGame == true) {
    fill(255, 0, 0);
    rect(00, 0, 600, 600);
    fill(0, 0, 0);
    text("u die(rip)", 300, 300);
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