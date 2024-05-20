//TP2 
//Erica Ruiz Diaz
//Com 5
PImage eternauta, eternauta2, eternauta3;
PFont fuenteNueva;

int pantalla = 0;
int tiempoInicio;
int duracionPantalla1 = 10000; // (10 segundos) 
int duracionPantalla2 = 15000; // (15 segundos)
int duracionPantalla3 = 25000; // (25 segundos)

void setup() {
  size(640, 480);
  eternauta = loadImage("eternauta.jpg");
  eternauta2 = loadImage("eternauta2.jpg");
  eternauta3 = loadImage("eternauta3.jpg");
  fuenteNueva = loadFont("bellmt.vlw");
  tiempoInicio = millis();
}

void draw() {
  background(255);
  
  switch(pantalla) {
    case 0:
      float posX = width/2 + map(constrain(millis() - tiempoInicio, 8, duracionPantalla1), 8, duracionPantalla1, -textWidth("'El Eternauta'"), width/2 + textWidth("'El Eternauta'"));
      float posY = height/2 - 50; 
      mostrarPantalla(eternauta, "'El Eternauta': \n Un clásico \n de la ciencia ficción \n argentina que sigue \n cautivando a los lectores.", posX, posY, color(255, 0, 0), fuenteNueva, true); 
      break;
    case 1:
      float posY2 = height/2 - map(constrain(millis() - tiempoInicio, 0, duracionPantalla2), 0, duracionPantalla2, 0, textAscent() * 12); // 12 líneas de texto para mostrar "...Buenos Aires."
      mostrarPantalla(eternauta2, "Se trata de\n  una invasión \n extraterrestre\n y la lucha por sobrevivir \n en una Buenos Aires \n desolada por \n una tormenta \n toxica y mortal.", width/2, posY2, color(255), fuenteNueva, true); 
      break;
    case 2:
      if (millis() - tiempoInicio < duracionPantalla3 - 5000) { // Aparece durante los primeros 5 segundos y luego se mantiene estático
        float posY3 = map(constrain(millis() - tiempoInicio, 0, 5000), 0, 5000, -height/4, height/4);
        mostrarPantalla(eternauta3, "Ésta poderosa narrativa \n nos recuerda \n la importancia \n de la esperanza \n y la resistencia\n en tiempos de adversidad.", width/2, posY3, color(255, 165, 0), fuenteNueva, true);
      } else {
        mostrarPantalla(eternauta3, "Ésta poderosa narrativa \n nos recuerda \n la importancia \n de la esperanza \n y la resistencia \n en tiempos de adversidad.", width/2, height/4, color(255, 165, 0), fuenteNueva, true); 
      }
      break;
  }
  
  if (millis() - tiempoInicio > duracionPantalla1) { 
    pantalla++;
    tiempoInicio = millis();
    if (pantalla > 2) {
      pantalla = 0;
    }
  }
}

void mostrarPantalla(PImage imagen, String texto, float x, float y, color textoColor, PFont textoFuente, boolean contorno) {
  image(imagen, 0, 0, width, height);
  fill(textoColor);
  if (contorno) {
    stroke(0); // 
    strokeWeight(4); 
  } else {
  }
  textFont(textoFuente);
  textAlign(CENTER);
  text(texto, x, y);
}
