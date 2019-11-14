Particle [] nooo = new Particle[500];
void setup()
{
  size(750,750);
  noStroke();
  for(int i = 0; i < nooo.length; i++){
    nooo[i] = new Particle();
    if(i == 0){
      nooo[i] = new OddballParticle();
    }
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < nooo.length; i++){
    nooo[i].show();
    nooo[i].move();
  }
    
}
void mousePressed() {
  setup();
}
class Particle
{
  double myAngle, mySpeed, myX, myY;
  int myColor;
  Particle()
  {
    myX = -350;
    myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*15;
    myColor = color(50, 50, 50);
  }
  void show(){
    triangle(350+(float)myX,75+(float)myY,425+(float)myX,35+(float)myY,450+(float)myX,75+(float)myY);
    fill(myColor);
    triangle(250+(float)myX,75+(float)myY,325+(float)myX,50+(float)myY,450+(float)myX,75+(float)myY);
    fill(100,200,100);
  }
  void move(){
  	myY=myY+Math.sin(myAngle)*mySpeed;
    myX=myX+Math.cos(myAngle)*mySpeed;
 }
}
class OddballParticle extends Particle{
  OddballParticle(){
    myX = myY = Math.random() * 150;
    mySpeed = Math.random() * 10;
    myAngle = Math.random()*Math.PI;
    myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
  }
  void show(){
    fill(color(200));
    ellipse((float)myX+200,(float)myY+200,100,100);
  }
  
}