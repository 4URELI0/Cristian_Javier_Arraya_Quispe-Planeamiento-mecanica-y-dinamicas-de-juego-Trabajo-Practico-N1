PVector posicionJugador;
PVector posicionEnemigo;

Vector vectorEnemigo;
Vector vectorJugadorEnemigo;
Vector vectorJugador;
/*Jugador*/
PImage imagenJugador;
Jugador jugador;

/*Enemigo*/
PImage imagenEnemigo;
Enemigo enemigo;

void setup(){
  size(500,500);
  /*Posiciones del enemigo y jugador*/
  posicionEnemigo = new PVector(width/2, height /2 - 100);
  posicionJugador = new PVector(0,0);
  /*Cargar imagen*/
  imagenJugador = loadImage("Tanque.png");
  imagenEnemigo = loadImage("TorreVigilancia.png");
 
  /*Instanciar al jugador y el enemigo en su posicion con su imagen y alto e ancho*/
  jugador = new Jugador(imagenJugador, posicionJugador,150,150);
  enemigo = new Enemigo(imagenEnemigo, posicionEnemigo, 100,100);
  

  
  vectorJugadorEnemigo = new Vector();
  vectorEnemigo = new Vector();
  vectorJugador = new Vector(jugador.getPosicion(),new PVector(0,-100));
  
}
void draw(){
  background(#1A862B);//Fondo verde
  jugador.setPosicion(new PVector(mouseX,mouseY));//Posicion del jugador siempre esta en la posicion del mouse
  jugador.render();
  enemigo.render();
  
  vectorJugador.display();
}
