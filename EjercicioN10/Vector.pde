class Vector 
{
private PVector origen;
private PVector destino;

public Vector (PVector origen, PVector destino)
{
  this.origen = origen;
  this.destino = destino;
}
public Vector ()
{
  this.origen = new PVector();
  this.destino = new PVector();
}

public void display ()
{
  PVector puntoFinal = obtenerPuntoFinal();
  line(origen.x, origen.y, puntoFinal.x,puntoFinal.y);
}
private PVector obtenerPuntoFinal()
{
  PVector puntoFinal = new PVector(origen.x+destino.x,origen.y+destino.y);
  return puntoFinal;
}
/*Operacion suma*/
public Vector sumaVectores(Vector segundoVector)
{
 Vector vectorResultante = new Vector();//Creamos un nuevo vector que sera el resultado de la suma
 vectorResultante.origen = this.origen;
 vectorResultante.destino.x = this.destino.x + segundoVector.destino.x;
 vectorResultante.destino.y = this.destino.y + segundoVector.destino.y;
 return vectorResultante;//Tercer vector
}
/*Resta*/
public Vector restaVectores(Vector segundoVector)
{
 Vector vectorResultante = new Vector();//Creamos un nuevo vector que sera el resultado de la suma
 vectorResultante.origen = this.origen;
 vectorResultante.destino.x = this.destino.x - segundoVector.destino.x;
 vectorResultante.destino.y = this.destino.y - segundoVector.destino.y;
 return vectorResultante;//Tercer vector
}
public PVector getOrigen() {
    return this.origen;
  }

  public PVector getDestino() {
    return this.destino;
  }

  // Setters
  public void setOrigen(PVector origen) {
    this.origen = origen;
  }

  public void setDestino(PVector destino) {
    this.destino = destino;
  }
}
