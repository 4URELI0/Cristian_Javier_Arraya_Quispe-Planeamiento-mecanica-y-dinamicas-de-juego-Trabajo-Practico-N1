class Enemigo extends GameObject {
  private PImage imagen;
  private int altoImg;
  private int anchoImg;
  /*contructor parametrizado*/
  Enemigo(PImage imagen, PVector pos, int altoImg, int anchoImg) {
    this.imagen = imagen;
    this.pos = pos;
    this.altoImg = altoImg;
    this.anchoImg = anchoImg;
  }
 /*Dibujar al jugador*/
  public void render() {
    /*acercan el puntero al medio*/
    imageMode(CENTER);
    image(this.imagen, this.getPosicion().x, this.getPosicion().y,this.altoImg,this.anchoImg);
  }
}
