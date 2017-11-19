
  int randomNumber = (int) random(700);  
int score = 0;
int y = 350;
int x = 350;
int accel = 0;
int windval = (int) random(0, width);
void setup(){
  size(700,700);
}

void draw(){
  accel = accel + 1;
  y = y+accel;




//fill(0,0,0);
  background(0,0,0);
  fill(178,145,36);
  ellipse(randomNumber,y,10,10);
  fill((int) random(0,255),(int) random(0,255),(int) random(0,255));
  ellipse(randomNumber,y,10,10);
  if(score>= 50){

text("we luv ducks, u win", 250,  20);
textSize(20) ; //if it’s not big enough 
fill(255,255,255);
}
  stroke(255,0,0);
  fill((int) random(0,255),(int) random(0,255),(int) random(0,255));
  rect(mouseX,650,100,100);
   
text("Score: " + score, 20, 20);
if(y > 699){
  checkCatch(randomNumber);
  //
}
  if(y >= 700){
    accel = 1;
    y = 0;
    x=0;
       randomNumber = (int) random(700);  
}

}
void rainwindaffect(){
  
}
void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score == 0){
     score = 0;
   } 
   else if( score > 0){
     score--;
   }
println("Your score is now: " + score);
//fill(0, 0, 0);
textSize(16);


}