PVector puntoA;
PVector posicionJugador;
PVector posicionEnemigo;
//Vector vectorJugador;
Vector vectorEnemigo;
Vector vectorEnemigoJugador;

PImage imagenJugador;
Jugador jugador;
PImage imagenEnemigo;
Enemigo enemigo;
PImage imagenDisparo;
Disparo disparo;

ArrayList<Disparo> disparoList;
public void setup()
{
  size(800,500);
  posicionEnemigo = new PVector(width/2 - 150,height/2);
  posicionJugador = new PVector(0, 0);
  puntoA = new PVector(1, 0);
  vectorEnemigo = new Vector (posicionEnemigo,puntoA);
  vectorEnemigoJugador = new Vector(); 
  
  disparoList = new ArrayList<Disparo>();
  
  /*Cargar la imagen del jugador y enemigo*/
  imagenJugador = loadImage("Jugador.png");
  imagenEnemigo = loadImage("Enemigo.png");
  imagenDisparo = loadImage("Disparo1.png");
  
  /*Crear instancia del jugador y enemigo*/
  jugador = new Jugador(imagenJugador,posicionJugador,50,50);
  enemigo = new Enemigo(imagenEnemigo, posicionEnemigo,50,50);
}

public void draw()
{
    background(#536456);
    stroke(#FA0000); // Rojo
    dibujarVectorEnemigoJugador();
    vectorEnemigo.display();
    escribirMensaje();
    
    for(Disparo unDisparo : disparoList){
    unDisparo.render();
    unDisparo.move();
    }
    /*El jugador se ubicara en la posicion del mouse*/
    jugador.setPosicion(new PVector(mouseX, mouseY));
    /*El enemigo se ubicara en la posicion de la mitad del ancho y alto de la pantalla*/
    enemigo.setPosicion(new PVector(width/2 - 150,height/2));
    
    /*Renderizar jugador*/
    jugador.render();
    enemigo.render();
}

public void dibujarVectorEnemigoJugador()
{
  vectorEnemigoJugador.setOrigen(posicionEnemigo);
  vectorEnemigoJugador.setDestino(new PVector(1,0));
  vectorEnemigoJugador.setDestino(PVector.sub(jugador.getPosicion(),posicionEnemigo).normalize());
  vectorEnemigoJugador.display();
}

float anguloEntreVectores(Vector vector1, Vector vector2) {
  // Calcula el producto punto entre los dos vectores
  float productoPunto = PVector.dot(vector1.getDestino(), vector2.getDestino());
  
  // Calcula las magnitudes de los vectores
  float magnitudVector1 = vector1.getDestino().mag();
  float magnitudVector2 = vector2.getDestino().mag();
  
  // Calcula el coseno del ángulo entre los vectores
  float cosenoAngulo = productoPunto / (magnitudVector1 * magnitudVector2);
  
  // Aplica la función arcocoseno para obtener el ángulo en radianes
  float anguloRadianes = acos(cosenoAngulo);
  
  // Convierte el ángulo a grados si es necesario
  float anguloGrados = degrees(anguloRadianes);
  
  return anguloGrados;
}

public void escribirMensaje()
{
  float dotProducto = vectorEnemigo.obtenerProductoPunto(vectorEnemigoJugador);
  println("Producto punto: "+ dotProducto);
  textSize(20);
  fill(#F2EDFA);
  text("Producto punto: "+ dotProducto,1,30);
  float anguloGrados = 30; //Angulo de deteccion del enemigo
  float anguloDeVision = cos(radians(anguloGrados));
  
  //Calcula el angulo entre los vectores del enemigo y el 2do vector de enemigo a jugador
  float angulo = round(anguloEntreVectores(vectorEnemigo,vectorEnemigoJugador));
  //Transformamos el angulo de flotante a entero
  text("angulo entre jugador y enemigo: " + (int)angulo +"°",500,30);
  
  if(dotProducto >= anguloDeVision)
  {
    fill(#ff6961);
    text("Jugador detectado!",300,30);
    PVector direccionDisparo = PVector.sub(jugador.getPosicion(),vectorEnemigo.getOrigen());
    // Creamos un nuevo disparo con la dirección calculada y lo agregamos a la lista
    disparoList.add(new Disparo(new PVector(vectorEnemigo.getOrigen().x + 3,vectorEnemigo.getOrigen().y-15),direccionDisparo,imagenDisparo,50,50,7));
}else
  {
    fill(#00FF0A);
    text("No detectado...",300,30);
  }
}
