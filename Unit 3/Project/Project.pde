/*
Michael Guo
2-1
Apr 7
*/

color white = #FFFFFF;
color black = #000000;
color silver = #C0C0C0;
color grey = #808080;
color red = #FF0000;
color lime = #00FF00;
color blue = #0000FF;
color yellow = #FFFF00;
color magenta = #FF00FF;
color cyan= #00FFFF;
color selected;
float x;
float t;

void setup(){
  size(1200, 800);
  background(white);
  selected=black;
  x=490;
  t=2;
}

void draw(){
  strokeWeight(5);
  stroke(black);
  fill(silver);
  rect(0, 0, 1200, 200);
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
}

void tactile(int x, int y, int r){
  if(dist(x,y,mouseX,mouseY)<r){
    stroke(white);
  } else {
    stroke(black);
  }
}  

void mouseDragged(){
  if (mouseY > 200){
    stroke(selected);
    strokeWeight(t);
    line(pmouseX, pmouseY, mouseX, mouseY);
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
}

void slider() {
  if (mouseX > 450 && mouseX <650 && mouseY > 35 && mouseY < 65){
    x=mouseX;
  }
  
  t = map(x, 450, 650, 0, 10);
}
