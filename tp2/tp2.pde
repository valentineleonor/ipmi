//VALENTINA CUATRINI COMISION 3 PROFESOR DAVID BEDOIAN
//VARIABLES
PImage luces, luces1, luces2, luces3, luces4;
float posY, posX;
int estado;
PFont fuente1;
int contador;
int tiempo = 0;
String texto0, texto1, texto2, texto3, texto4;

void setup() {
  size(640, 480);
  background(0);
  estado = 0; // INICIO
  //imagenes
  luces = loadImage("luces.jpg"); // portada
  luces1 = loadImage("luces1.jpg"); //pantalla1
  luces2 = loadImage("luces2.jpg"); //pantalla2
  luces3 = loadImage("luces3.jpg"); //pantalla3
  luces4 = loadImage("luces4.jpg"); //pantalla4

  // textos
  texto0 = "iniciar";
  texto1 = "SKALAR es una instalación artística a gran escala que explora el complejo impacto de la luz y el sonido en la percepción humana.";
  texto2 = "Creada por Christopher Bauder y Kangding Ray, esta obra es una reflexión sobre la naturaleza fundamental y la esencia de las emociones humanas.";
  texto3 = "Al combinar una gama de espejos cinéticos y luces móviles sincronizadas con un sistema de sonido multicanal, SKALAR ofrece una narración audiovisual de dibujos vectoriales de luz radiante y sonido multidimensional.";
  texto4 = "reiniciar";
  fuente1 = createFont("Calibri-Bold", 48);
  textFont(fuente1);
  textAlign(LEFT);
  contador = 0;
  posX = 10;
  posY = 320;
}

void draw() {
  println("estado=" + estado);
  background(0);

  if (estado == 0) {// inicio
    image(luces, 0, 0, width, height);
    fill(255);
    textSize(25);
    text(texto0, posX, posY, 600, 200);

    if (mouseX > 270 && mouseX < 370 && mouseY > 400 && mouseY < 450) { //dibujo del boton de iniciar
      fill(0, 255, 0); // Color verde si el ratón está sobre el botón
    } else {
      fill(255); // Color gris boton inactivo
    }
    rect(270, 400, 100, 50); // tamaño boton
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Iniciar", 320, 425); // textobotoncito
  } else if (estado == 1) {// Pantalla 1
    image(luces1, 0, 0, width, height);
    fill(255);
    textSize(25);
    text(texto1, posX, posY, 600, 200);

    contador++; //tiempo de la pantalla
    if (contador >= 130) {
      estado++;
      contador = 0;
    }
  } else if (estado == 2) {
    image(luces1, 0, 0, width, height);
    fill(255);
    textSize(25);
    text(texto1, posX, posY, 600, 200);

    posX += 5; // Amplio la variable x
    if (posX >= width) {
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 3) {  // Pantalla 2
   
    image(luces2, 0, 0, width, height);
    fill(255);
    textSize(25);
    text(texto2, posX, posY, 600, 200);

    contador++;
    if (contador >= 130) {
      estado++;
      contador = 0;
    }
  } else if (estado == 4) { // Pantalla 2 con efect
    
    image(luces2, 0, 0, width, height);
    fill(255);
    textSize(25);
    text(texto2, posX, posY, 600, 200);

    posX += 5;
    if (posX >= width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 5) {   // Pantalla 3
 
    image(luces3, 0, 0, width, height);
    fill(255);
    textSize(25);
    text(texto3, posX, posY, 600, 200);

    contador++;
    if (contador >= 180) { // aca agregue mas tiempo profe para que se lea mejor el texto xq es mas largo
      estado++;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 6) { // Pantalla 4 + boton reiniciar
    image(luces4, 0, 0, width, height);
    fill(255);
    textSize(25);
    text(texto4, posX, posY, 600, 200);

    // Dibujo del botón
    if (mouseX > 270 && mouseX < 370 && mouseY > 400 && mouseY < 450) {
      fill(0, 255, 0); // Color verde si el ratón está sobre el botón
    } else {
      fill(200); // 
    }
    rect(270, 400, 100, 50); // botoncito 
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", 320, 425); // Texto del botón
  } else {
    fill(255, 0, 0);
    textSize(50);
    text("Error", width / 2, height / 2);
  }
}

void mousePressed() {
  if (estado == 0) {
   
    if (mouseX > 270 && mouseX < 370 && mouseY > 400 && mouseY < 450) {  // Colisión cuando em apoyo con el mouse en el rectángulo del boton iniciar
      estado = 1;
      contador = 0;
      posX = 10;
      posY = 320;
    }
  } else if (estado == 6) {
    // Colisión de mouse con el rectángulo del botoncito de reinicio
    if (mouseX > 270 && mouseX < 370 && mouseY > 400 && mouseY < 450) {
      estado = 1;
      contador = 0;
      posX = 10;
      posY = 320;
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
    posY = 320;
  }
}
