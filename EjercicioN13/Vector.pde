class Vector{
private PVector origen;
private PVector destino;

/*-----CONSTRUCTOR PARAMETRIZADO---*/
Vector(PVector origen, PVector destino)
{
this.origen = origen;
this.destino = destino;
}
/*CONSTRUCTOR NO PARAMETRIZADO*/
public Vector(){
this.origen = new PVector();
this.origen = new PVector();
}

/*Metodos accesores*/
  public PVector getOrigen() {
    return this.origen;
  }

  public PVector getDestino() {
    return this.destino;
  }

 
  public void setOrigen(PVector origen) {
    this.origen = origen;
  }

  public void setDestino(PVector destino) {
    this.destino = destino;
 }
 /*Metodos*/
 public void display ()
 {
  PVector puntoFinal = obtenerPuntoFinal();
  strokeWeight(6);
  line(origen.x, origen.y, puntoFinal.x,puntoFinal.y);
  point(PVector.add(this.getOrigen(), this.getDestino()).x,
  PVector.add(this.getOrigen(), this.getDestino()).y);
 }
 private PVector obtenerPuntoFinal()
 {
  PVector puntoFinal = new PVector(origen.x+destino.x,origen.y+destino.y);
  return puntoFinal;
  }
}
