class Jugador extends GameObject {
  private Vector vectorJugador; 
  private Vector vectorJugadorEnemigo;
 
  /*contructor parametrizado*/
  Jugador(PImage imagen, PVector pos, int altoImg, int anchoImg) {
    this.imagen = imagen;
    this.pos = pos;
    this.altoImg = altoImg;
    this.anchoImg = anchoImg;
    /*Creamos el vector sin contructor, vacio*/
    this.vectorJugador = new Vector();
    this.vectorJugadorEnemigo = new Vector(); 
  }
 /*Dibujar al jugador*/
  public void render() {
    /*acercan el puntero al medio*/
    imageMode(CENTER);
    image(this.imagen, this.getPosicion().x, this.getPosicion().y,this.altoImg,this.anchoImg);
    VectorJugadorApuntandoArriba();
    VectorJugadorApuntandoObjetivo();
}
  public void VectorJugadorApuntandoArriba(){
    this.vectorJugador = new Vector(this.pos,new PVector(0,-100));
    vectorJugador.display();
  }
  public void VectorJugadorApuntandoObjetivo(){
    this.vectorJugadorEnemigo.setOrigen(this.pos);
    this.vectorJugadorEnemigo.setDestino(PVector.sub(enemigo.getPosicion(),jugador.getPosicion()));    
    vectorJugadorEnemigo.display();
  }
}
