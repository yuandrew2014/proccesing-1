boolean win = false;
int x = 200;
int y = 400;
Car car1 = new Car(350, 300, 100, 10);
Car car2 = new Car(350, 50, 100, 10);
Car car3 = new Car(350, 100, 100, 10);
Car car4 = new Car(350, 350, 100, 10);
Car car5 = new Car(350,200,100,10);
Car car6 = new Car(350,250,100,10);
Car car7 = new Car(350, 150,100,10);
void setup() {
  fill(0, 0, 0);
  size(400, 400);
}

void draw() {
  println(y);
  background(0, 0, 0);
  fill(67, 64, 64);
  ellipse(x, y, 25, 25);

  if (x == 0) {
    x += 20;
  } else if (x == 400) {

    x -= 20;
  } else if (y == 0) {
    y += 20;
  } else if (y == 400) {
    y-= 20;
  }
  

  car1.display();
  car1.move(1);
  if(intersects(car1) == true){
    y = 400;
  }
  if(y == 20){
    win = true;
     
  

    
  }
  if (win == true){
 
    textSize(10); 
    text( "You Win",190, 200);
   
  }
  car2.display();
  car2.move(0);
  if(intersects(car2) == true){
    y = 400;
  }
  car3.display();
  car3.move(1);
  if(intersects(car3) == true){
    y = 400;
  }
  car4.display();
  car4.move(0);
  if(intersects(car4) == true){
    y = 400;
  }
  car5.display();
  car5.move(0);
  if(intersects(car5) == true){
    y = 400;
  }
  car6.display();
  car6.move(1);
  if(intersects(car6) == true){
    y = 400;
  }
  car7.display();
  car7.move(0);
  if(intersects(car7) == true){
   y = 400; 
  }
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)

    {
      //Frog Y position goes up
      y-=20;
      background(0, 0, 0);
    } else if (keyCode == DOWN)
    {
      //Frog Y position goes down 
      y+=20;
      background(0, 0, 0);
    } else if (keyCode == RIGHT)
    {
      //Frog X position goes right
      x+=20;
      background(0, 0, 0);
    } else if (keyCode == LEFT)
    {
      //Frog X position goes left
      x-=20;
      background(0, 0, 0);
    }
  }
}
 boolean intersects(Car car) {
if ((y > car.carY && y < car.carY+30 && (x> car.carX && x < car.carX + car.size)))
          return true;
    else {
        return false;

    }

}
class Car{
  int carX;
  int carY;
  int size;
  int speed;
   
   void getX(){
     
     
   }
    void getY(){
     
     
   }
    void getSize(){
     
     
   }
  
  

  Car(int carX, int carY, int size, int speed) {
    this.carX = carX;
    this.carY = carY;
    this.size = size;
    this.speed = speed;
  }

  Car() {
    int getX;
    int getY;
    int getSize;
    this.carX = 350;
    this.carY = 200;
    this.size = 100;
    this.speed = 100;
  }
  void display() 
  {
    fill(255, 255, 255);
    rect(this.carX, this.carY, this.size, 10);
  }
  void move(int dir) {
    if (dir == 0) {
      this.carX -= this.speed;
      if (this.carX < -100) { 
        this.carX = 400;
      }
    } else if (dir == 1) {
      this.carX += this.speed;
      if(this.carX < -100){
        this.carX = 0;
      }
    }
    if (carX > 450) {
      carX = 0;
    }
  }
 
}