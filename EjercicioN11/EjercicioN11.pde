PVector puntoA;
PVector posicionJugador;
PVector posicionEnemigo;
Vector vectorJugador;
Vector vectorEnemigo;
Vector vectorEnemigoJugador;

ArrayList<Disparo> disparoList;
public void setup()
{
  size(800,500);
  posicionEnemigo = new PVector(width/2,height/2);
  posicionJugador = new PVector(0, 0);
  puntoA = new PVector(1, 0);
  vectorJugador = new Vector (posicionJugador, puntoA);
  vectorEnemigo = new Vector (posicionEnemigo,puntoA);
  vectorEnemigoJugador = new Vector();
  
  disparoList = new ArrayList<Disparo>();
}

public void draw()
{
    background(#1D0F0F);
    stroke(#FCFCFC); // Blanco
    vectorJugador.setOrigen(new PVector (mouseX,mouseY));
    vectorJugador.display();
    stroke(#FA0000); // Rojo
    dibujarVectorEnemigoJugador();
    vectorEnemigo.display();
    escribirMensaje();
    
    for(Disparo unDisparo : disparoList){
    unDisparo.render();
    unDisparo.move();
    }
}

public void dibujarVectorEnemigoJugador()
{
  vectorEnemigoJugador.setOrigen(posicionEnemigo);
  vectorEnemigoJugador.setDestino(new PVector(1,0));
  vectorEnemigoJugador.setDestino(PVector.sub(vectorJugador.getOrigen(),posicionEnemigo).normalize());
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
  println("Producto punto: "+dotProducto);
  textSize(20);
  fill(#F2EDFA);
  text("Resultado producto punto: "+ dotProducto,100,30);
  float anguloGrados = 30; //Angulo de deteccion del enemigo
  float anguloDeVision = cos(radians(anguloGrados));
  
  //Calcula el angulo entre los vectores del enemigo y el 2do vector de enemigo a jugador
  float angulo = round(anguloEntreVectores(vectorEnemigo,vectorEnemigoJugador));
  //Transformamos el angulo de flotante a entero
  text("Angulo: " + (int)angulo +"°",80,170);
  
  if(dotProducto >= anguloDeVision)
  {
    fill(#ff6961);
    text("Detectado!",100,50);
    PVector direccionDisparo = PVector.sub(vectorJugador.getOrigen(), vectorEnemigo.getOrigen());
    // Creamos un nuevo disparo con la dirección calculada y lo agregamos a la lista
    disparoList.add(new Disparo((int) vectorEnemigo.getOrigen().x + 10, (int) vectorEnemigo.getOrigen().y, direccionDisparo,5));
  }else
  {
    fill(#00FF0A);
    text("No detectado...",100,50);
  }
}
