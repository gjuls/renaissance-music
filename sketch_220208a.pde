
import processing.sound.*;
SoundFile file;


color c = #FFF75F;//color(255, 204, 0, 35);
color b = #FF747D;//color(554, 102, 0, 35);
color a = #FFF75F;//#5FFF83;//color(104, 102, 0, 35);

PImage bg;
float x0 = 1;
float x00 = 1;
float x  = 1;
float x1 = 1;
float x2 = 1;

float y = 50;
float speed = 0.155; //AG 1
float speed2 = 0.155;// BEPPE 2
float speed3 = 0.155; //GIULIA 3

int fine_rigo = 740;
int fine_prima = 530;
int fine_seconda = 300;

void setup() {
size(800, 582);
bg = loadImage("canone.jpg");

  file = new SoundFile(this,"audio.wav");
  file.play();
  
  file.amp(.5);
  
}

void draw() {
  background(bg);
  move();
  display();
  //saveFrame("canone.tif"); rallenta tantissimo 
}

void move() {
  //ANNAGIULIA
  x = x + speed;
  while (x > fine_prima) {
  //x = 0;
  }
  //BEPPE
  x1 = x1 + 2 * speed2;
  if (x1 > fine_rigo) {
      x1 = fine_rigo;
        if(x00 < fine_seconda){
        x00 = x00 + 2 * speed2;
        }
  }
  //GIULIA
  x2 = x2 + 3 * speed3;
  if (x2 > fine_rigo) {
      x2 = fine_rigo;
        if(x0 < fine_rigo){
        x0 = x0 + 3 * speed3;
        }
  }   
}


void display() {
  
  fill(c, 35);
  rect(50,y+185,x,y);
  
    fill(b, 35);
  rect(50,y+185,x1,y);
  
    fill(a, 35);
  rect(50,y+185,x2,y);
  
      fill(a, 35);
  rect(50,y+270, x0 ,y + 4);
  
      fill(b, 35);
  rect(50,y+270, x00 ,y + 4);
}
