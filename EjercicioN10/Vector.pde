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
 vectorResultante.origen = this.origen;//El nuevo vector va a tener el mismo valor que el de x e y del vectorA
 vectorResultante.destino.x = this.destino.x + segundoVector.destino.x;//El valor en X del destino del nuevo vector va a ser igual a el valor x destino del primer vector + el valor x destino del segundo vector
 vectorResultante.destino.y = this.destino.y + segundoVector.destino.y;//El valor en Y del destino del nuevo vector va a ser igual a el valor Y destino del primer vector + el valor Y destino del segundo vector
 return vectorResultante;//Tercer vector
}

/*Creamos los metodos accesores*/
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
}
