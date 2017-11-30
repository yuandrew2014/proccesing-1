double j = -10;
double g = 0.5;
double v = 0;
int x = 300;
int y = 300;
int w = 500;
int wy = (int) random(300, 500);
void setup(){
  size(600,600);
  
}
void draw(){
y += v;
v += g;
  background(61,67,75);
  fill(255,130,5);
ellipse(x,y,40,40);
  
  fill(0,0,0);
  rect(w,0,40,wy);
    w += -10;
    if(w == 0){
      w = 600;
      wy = (int) random(100, 400);
    }
    
  }
void mousePressed(){
  v= j;
}