
  int randomNumber = (int) random(700);  
int score = 0;
int y = 350;
int x = 350;


void setup(){
  size(700,700);
}

void draw(){
  y = y+30;



  background(2,25,255);
  fill(255,0,0);
  ellipse(randomNumber,y,100,100);
  
  stroke(255,0,0);
  fill(0,300,0);
  rect(mouseX,650,100,100);
  void checkCatch(int x){
if (x > mouseX && x < mouseX+700)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}

  if(y >= 700){
    y = 0;
    x=0;
       randomNumber = (int) random(700);  
}
void checkCatch(int x){
if (x > mouseX && x < mouseX+700)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}
}