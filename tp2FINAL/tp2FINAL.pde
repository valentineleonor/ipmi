// https://www.youtube.com/watch?v=pw-Y8in2PhM LINK AL VIDEO 
PImage imagen;
color mouseColor;

void setup () {
  size (800, 400) ;
  // cargar imagen
  imagen = loadImage("tp2.jpg");
  mouseColor =color(255);
}

void draw() {
  background(255);
  image(imagen, 0, 0, 400, 400);
  //nombre de funcion  //for para recorrer la matriz en x y otro para recorrer en Y dibujan los 4 ciruclas en una grilla de 2x2
  for (int j = 0; j < 2; j++) {
    for (int i = 0; i < 2; i++) {
      circulo(500+170*i, 120+170*j, 150, 100, 15, 15, 9);
      circulo(515+170*i, 135+170*j, 100, 50, 10, -10, 9);
      circulo(525+170*i, 125+170*j, 50, 5, -12, 0, 9);
    }
  }
}

//esta funcion recibe el tamano del circulo mas grande y los dibuja, lo remplaza facilitando la escritura del codigo

void circulo(float x, float y, float size, float size2, float dx, float dy, float cantidad) {
  boolean negro = true;
  noStroke();
  for (int i = 0; i < cantidad; i++) {
    //calculo el tamano de cada circulo
    float tamano = map(i, 0, cantidad-1, size, size2);
    // sumo a la posicion el desplazamiento hasta el nuevo centro.
    float xx = x + map(i, 0, cantidad-1, 0, dx);
    float yy = y + map(i, 0, cantidad-1, 0, dy);
    //vario el color para que se vayan intercalando negro y blanco
    if (negro) {
      fill(0);
    } else {
      fill(mouseColor);
    }
    //niego la variable
    negro = !negro;
    ellipse(xx, yy, tamano, tamano);
  }
}

color calcularColor(float rojo, float verde) {
  return color(rojo, verde, 255);
}

void keyPressed(){
  mouseColor = color(255);
}

void mousePressed() {
  float cantidadMouseX = map(mouseX, 0, width, 0, 255);
  float cantidadMouseY = map(mouseY, 0, height, 0, 255);
  mouseColor = calcularColor(cantidadMouseX, cantidadMouseY);
}
