PImage miFoto;
void setup() {
  size(800, 400);
  miFoto= loadImage("data/val.jpeg");
}

void draw() {
  background (255, 224, 234);
  image (miFoto, 0, 0, 400, 400);
  fill (0);
  noStroke ();
  rect (488, 70, 230, 170); //pelo
  ellipse (603, 62, 230, 140);//pelo
  fill (250, 238, 225) ; //color piel
  noStroke ();
  ellipse (600, 321, 80, 270); //cuello

  ellipse(600, 132, 170, 230); // rostro
  ellipse (467, 441, 74, 235); //brazo der
  ellipse (730, 400, 74, 235); //brazo izq
  fill (0);
  noStroke ();
  rect (515, 15, 170, 60);//flequillo
  fill (229, 7, 22);
  noStroke ();
  ellipse (600, 200, 70, 20);// labios
  fill (255);//color ojo
  ellipse (560, 100, 50, 20);//ojo der
  ellipse (635, 100, 50, 20); //ojo izq
  fill (134, 104, 58); //color pupila
  stroke (1);
  ellipse (560, 100, 25, 10); //pupila der
  ellipse (635, 100, 25, 10); //pupila izq
  fill(172, 182, 183, 200); //color anteojos
  noStroke ();
  ellipse (550, 100, 100, 60); //anteojo de
  ellipse (650, 100, 100, 60); //anteojo izq
  stroke (173, 150, 120);
  line (599, 120, 586, 170);//nariz
  line (599, 170, 586, 170);
  fill (0);
  noStroke ();
  ellipse (500, 310, 100, 60); //hombros der
  ellipse (715, 310, 100, 60); //hombros izq

  rect (485, 300, 230, 170); //vestido
  fill (72, 72, 72);
  noFill ();
  stroke (2);
  fill (250, 238, 225) ; //color piel
  noStroke ();
  ellipse (600, 300, 80, 80);// cuello vestido


  fill (255);
  noStroke();
  ellipse (610, 362, 30, 30);
  ellipse (685, 381, 30, 30);
  ellipse (550, 400, 30, 30);
  ellipse (724, 311, 30, 30);
 
  ellipse (500, 310, 30, 30);
  ellipse (549, 338, 30, 30);
  ellipse (650, 400, 30, 30);
  ellipse (500, 310, 30, 30);
  ellipse (650, 345, 30, 30);
  ellipse (500, 375, 30, 30);
}
void mousePressed() { //hacer click para ver coordinadas
  print(mouseX + "," + mouseY);
}
