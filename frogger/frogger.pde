int x = 200;
int y = 400;
Car car1 = new Car(350, 300, 100, 10);
Car car2 = new Car(350, 100, 100, 10);
Car car3 = new Car(350, 100, 100, 10);
Car car4 = new Car(350, 300, 100, 10);


void setup() {
  fill(0, 0, 0);
  size(400, 400);
}

void draw() {
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

  car2.display();
  car2.move(0);
  car3.display();
  car3.move(1);
  car4.display();
  car4.move(0);
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
class Car {
  int carX;
  int carY;
  int size;
  int speed;

  Car(int carX, int carY, int size, int speed) {
    this.carX = carX;
    this.carY = carY;
    this.size = size;
    this.speed = speed;
  }

  Car() {
    this.carX = 350;
    this.carY = 200;
    this.size = 100;
    this.speed = 50;
  }
  void display() 
  {
    fill(255, 255, 255);
    rect(this.carX, this.carY, this.size, 10);
  }
  void move(int dir) {
    if (dir == 0) {
      this.carX -= this.speed;
      if (this.carX < 0) { 
        this.carX = 400;
      }
    } else if (dir == 1) {
      this.carX += this.speed;
    }
    if (carX > 400) {
      carX = 0;
    }
  }
}