PVector posicionJugador;
PVector posicionEnemigo;

Vector vectorEnemigo;
Vector vectorEnemigoJugador;

PImage imagenJugador;
Jugador jugador;
void setup(){
  size(500,500);
  posicionEnemigo = new PVector(width/2 - 150, height /2);
  
  imagenJugador = loadImage("Tanque.png");
  jugador = new Jugador(imagenJugador, posicionJugador,150,150);
  
}
void draw(){
  background(#1A862B);
  jugador.setPosicion(new PVector(mouseX,mouseY));
  jugador.render();
}
