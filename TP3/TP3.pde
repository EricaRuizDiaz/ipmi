// https://youtu.be/BFAxeCXxs6s
PImage opart;
boolean invertirColores = false; //defini variables
int grosorLineasBlancas = 4;
int grosorLineasFucsias = 4;

void setup() {
  size(800, 400);
  noStroke();
  opart = loadImage("op art.jpg");
}
void draw() {
  background(0,191,255);
  image(opart, 0, 0);
  
  if (invertirColores) {
    dibujarLineasInvertidas();
  } else {
    dibujarLineasOriginales();
  }
}
void keyPressed() {
  if (key == ' ') {
    invertirColores = !invertirColores; 
  } else if (key == 'r') {
    reiniciarPrograma(); 
  }
}

void mouseMoved() {
  
  if (mouseY < height / 2) {
    grosorLineasBlancas = 20; 
    grosorLineasFucsias = 4;  
  } else if (mouseY > height / 2) {
    grosorLineasBlancas = 4;  
    grosorLineasFucsias =20; 
  } else {
    grosorLineasBlancas = 4;  
    grosorLineasFucsias = 4;  
  }
}

void dibujarLineasOriginales() { // Use lineas originales con ciclo for
  strokeWeight(grosorLineasBlancas);

  // Dibujar líneas blancas
  stroke(255); // Color blanco
  stroke(255); // Color blanco
  for (int i = 408; i < 807; i += 16) {
    line(i, i, i, 0);
  }


  strokeWeight(grosorLineasFucsias);

  // Dibujar líneas celestes
  stroke(1, 19, 131); // Color celeste
  for (int i = 550; i <= 1050; i += 15) {
    line(400, i, 390, height);
  }

  strokeWeight(4);

  // Dibujar líneas fucsia
  stroke(255, 0, 255); // Color fucsia
  for (int i = 406; i <= 805; i += 20) {
    line(i, 0, i, height);
  }

  // Dibujar líneas doradas
  stroke(216, 185, 2); // Color dorado
  for (int i = 402; i <= 803; i += 13) {
    line(i, 0, i, height);
  }

  // Dibujar líneas negras
  stroke(54, 53, 46); // Color negro
  for (int i = 400; i <= 800; i += 60) {
    line(i, 0, i, height);
  }
}

void dibujarLineasInvertidas() { // Use funcion linea invertidas
  strokeWeight(grosorLineasBlancas);

  // Dibujar líneas invertidas
  stroke(0); // Color negro en lugar de blanco
  for (int i = 408; i < 807; i += 16) {
    line(i, i, i, 0);
  }

  strokeWeight(grosorLineasFucsias);

  stroke(255, 0, 255); // Color fucsia en lugar de celeste
  for (int i = 550; i <= 1050; i += 15) {
    line(400, i, 390, height);
  }

  strokeWeight(4);

  // Dibujar líneas fucsia
  stroke(255, 216, 2); // Color amarillo en lugar de dorado
  for (int i = 402; i <= 803; i += 13) {
    line(i, 0, i, height);
  }

  // Dibujar líneas doradas
  stroke(216, 185, 2); // Color dorado
  for (int i = 402; i <= 803; i += 13) {
    line(i, 0, i, height);
  }

  // Dibujar líneas negras
  stroke(54, 53, 46); // Color negro
  for (int i = 400; i <= 800; i += 60) {
    line(i, 0, i, height);
  }
}

void reiniciarPrograma() { // resultado final
  invertirColores = false;
  grosorLineasBlancas = 4;
  grosorLineasFucsias = 4;
}
