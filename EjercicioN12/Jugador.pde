class Jugador extends GameObject {
  private Vector vectorJugador; 
  private Vector vectorJugadorEnemigo;
  private int altoImg;
  private int anchoImg;
  /*------CONTRUCTOR PARAMETRIZADO-------*/
  Jugador(PImage imagen, PVector pos, int altoImg, int anchoImg) {
    this.imagen = imagen;
    this.pos = pos;
    this.altoImg = altoImg;
    this.anchoImg = anchoImg;
    /*Creamos el vector sin contructor, vacio*/
    this.vectorJugador = new Vector();
    this.vectorJugadorEnemigo = new Vector(); 
  }
  
  /*------METODOS--------*/
 /*Dibujar al jugador*/
  public void render() {
    /*acercan el puntero al medio*/
    imageMode(CENTER);
    image(this.imagen, this.pos.x, this.pos.y, this.altoImg, this.anchoImg);
    VectorJugadorApuntandoArriba();
    VectorJugadorApuntandoObjetivo();
}
  public void VectorJugadorApuntandoArriba(){
    this.vectorJugador = new Vector(this.pos,new PVector(0,-100));
    vectorJugador.display();
  }
  public void VectorJugadorApuntandoObjetivo(){
    this.vectorJugadorEnemigo.setOrigen(this.pos);
    this.vectorJugadorEnemigo.setDestino(PVector.sub(enemigo.getPosicion(),this.pos));
    vectorJugadorEnemigo.display();
    Magnitud();
  }
  
  public void Magnitud(){
  float magnitud = this.vectorJugadorEnemigo.getDestino().mag();
  println(magnitud);
  /*Verificacion de la distancia entre jugador y enemigo*/
  if(magnitud <= 180.0){
  textSize(40);
  fill(#F70202);
  text("Enemigo detectado!",0,height/2-210);
  rotacionJugador();
  }else{
  fill(#FFFAFA);
  textSize(40);
  text("Enemigo no detectado...", 0, height/2-210);
  }
  }
  
 public void rotacionJugador() {
   /*Calculamos el angulo entre el vectorJugador y vectorJugadorEnemigo*/
    float angulo = PVector.angleBetween(this.vectorJugador.getDestino(), this.vectorJugadorEnemigo.getDestino());
    // Convertir el ángulo a radianes
    angulo = radians(degrees(angulo));

    PVector rotacion = this.vectorJugador.getDestino().cross(this.vectorJugadorEnemigo.getDestino());
    int direccion = 1;
    if (rotacion.z < 0) {
        direccion = -1;
    }

    pushMatrix();
    translate(this.pos.x, this.pos.y);
    rotate(direccion * angulo);
    imageMode(CENTER);
    image(this.imagen, 0, 0, this.altoImg, this.anchoImg);
    popMatrix();
}
}
