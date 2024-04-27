//TP1
//Erica Ruiz Diaz
//COM1

PImage manzana;

void setup(){
  size(800,400);
  manzana=loadImage ("manzana.jpg");
}
void draw (){
  background(255);
  image(manzana,0,0,400,400);
fill(220,0,0);
ellipse(580,250,200,200);

 fill(139,69,19);
 rect(580,100,5,50);
 
 fill(0,128,0);
 triangle(520,117,545,147,590,150);
 
 fill(144,238,144);
 triangle(560,110,585,149,520,115);
}
