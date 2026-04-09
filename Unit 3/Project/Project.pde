/*
Michael Guo
2-1
Apr 7
*/

PImage stamp;
PImage newfile;
PImage openfile;
PImage savefile;

boolean stampOn;

color white = #FFFFFF;
color black = #000000;
color silver = #C0C0C0;
color grey = #808080;
color red = #FF0000;
color lime = #00FF00;
color blue = #0000FF;
color yellow = #FFFF00;
color magenta = #FF00FF;
color cyan = #00FFFF;
color orange = #FFA500;
color selected;

float x;
float t;

void setup(){
  size(1200, 800);
  background(grey);
  stamp = loadImage("Stamp.png");
  newfile = loadImage("New.png");
  openfile = loadImage("Open.png");
  savefile = loadImage("Save.png");
  stampOn = false;
  selected=black;
  x=490;
  t=2;
  canva();
}

void draw(){
  strokeWeight(5);
  stroke(black);
  fill(silver);
  rect(0, 0, 1200, 200);
  fill(black);
  textSize(20);
  text("File", 150, 175);
  text("Stamp Tool", 330, 175);
  text("Thickness", 510, 175);
  text("Colours", 900, 175);
  strokeWeight(2);
  line(310, 5, 310, 195);
  line(435, 5, 435, 195);
  line(675, 5, 675, 195);
  strokeWeight(5);
  //colour
  tactile(850, 50, 25);
  fill(black);
  circle(850, 50, 50);
  
  tactile(950, 50, 25);
  fill(red);
  circle(950, 50, 50);
  
  tactile(1050, 50, 25);
  fill(lime);
  circle(1050, 50, 50);
  
  tactile(1150, 50, 25);
  fill(blue);
  circle(1150, 50, 50);
  
  tactile(850, 125, 25);
  fill(white);
  circle(850, 125, 50);
  
  tactile(950, 125, 25);
  fill(yellow);
  circle(950, 125, 50);
  
  tactile(1050, 125, 25);
  fill(magenta);
  circle(1050, 125, 50);
  
  tactile(1150, 125, 25);
  fill(cyan);
  circle(1150, 125, 50);
  //indicator
  stroke(grey);
  fill(selected);
  square(700, 50, 75);
  //slider
  stroke(black);
  line(450, 50, 650, 50);
  fill(grey);
  circle(x, 50, 30);
  strokeWeight(t);
  line(500, 100, 600, 100);
  strokeWeight(5);
  //buttons
  select(10, 10, 75, 125);
  strokeWeight(1);
  textSize(15);
  rect(10, 10, 75, 125);
  fill(black);
  text("New", 32.5, 110);
  image(newfile, 10, 10, 75, 75);
  select(110, 10, 75, 125);
  rect(110, 10, 75, 125);
  fill(black);
  text("Open", 130, 110);
  image(openfile, 110, 10, 75, 75);
  select(210, 10, 75, 125);
  rect(210, 10, 75, 125);
  fill(black);
  text("Save", 230, 110);
  image(savefile, 210, 10, 75, 75);
  //stamp
  select(325, 25, 100, 100);
  onoff();
  rect(325, 25, 100, 100);
  image(stamp, 325, 25, 100, 100);
}

void tactile(int x, int y, int r){
  if(dist(x,y,mouseX,mouseY)<r){
    stroke(white);
  } else {
    stroke(black);
  }
}  

void mouseDragged(){
  if (mouseX > 25 && mouseX < 1175 && mouseY > 225 && mouseY < 775){
    if (stampOn == false) {
      stroke(selected);
      strokeWeight(t);
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else {
      image(stamp, mouseX, mouseY, 100, 100);
    }
  }
  slider();
}

void mouseReleased(){
  if(dist(850,50,mouseX,mouseY)<25){
    selected=black;
  }
  if(dist(950,50,mouseX,mouseY)<25){
    selected=red;
  }
  if(dist(1050,50,mouseX,mouseY)<25){
    selected=lime;
  }
  if(dist(1150,50,mouseX,mouseY)<25){
    selected=blue;
  }
  if(dist(850,125,mouseX,mouseY)<25){
    selected=white;
  }
  if(dist(950,125,mouseX,mouseY)<25){
    selected=yellow;
  }
  if(dist(1050,125,mouseX,mouseY)<25){
    selected=magenta;
  }
  if(dist(1150,125,mouseX,mouseY)<25){
    selected=cyan;
  }
  slider();
  if (mouseX > 300 && mouseX < 400 && mouseY >25 && mouseY < 125){
    stampOn = !stampOn;
  }
  if (mouseX > 10 && mouseX < 85 && mouseY > 10 && mouseY < 135){
    canva();
  }
  if (mouseX > 110 && mouseX < 185 && mouseY > 10 && mouseY < 135){
    selectInput("Open", "openImage");
  }
  if (mouseX > 210 && mouseX < 285 && mouseY > 10 && mouseY < 135){
    selectOutput("Save as", "saveImage");
  }
}

void slider() {
  if (mouseX > 450 && mouseX <650 && mouseY > 35 && mouseY < 65){
    x=mouseX;
  }
  
  t = map(x, 450, 650, 0, 10);
}

void select(int x, int y, int w, int h){
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    fill(orange);
  } else {
    fill(white);
  }
}

void onoff(){
  if (stampOn==true){
    stroke(orange);
    strokeWeight(5);
  } else {
    stroke(black);
    strokeWeight(1);
  }
}

void canva(){
  noStroke();
  fill(white);
  rect(25, 225, 1150, 550);
}

void openImage(File f){
  if(f !=null){
    int n = 0;
    while(n<10){
      PImage pic = loadImage(f.getPath());
      image(pic, 25, 225);
      n=n+1;
    }
  }
}

void saveImage(File f){
  if (f !=null){
    PImage canva = get(25, 225, 1150, 550);
    canva.save(f.getAbsolutePath());
  }
}
