class Piso extends GameObject{
  private int x;
  private int y;
  private int xFinal;
  private int yFinal;
  public Vector vectorArriba;
  Piso(){}
  Piso(int x, int y, int xFinal, int yFinal){
  this.x = x;
  this.xFinal = xFinal;
  this.y = y;
  this.yFinal = yFinal;
  this.vectorArriba = new Vector(new PVector(x,y), new PVector(0,-1));
  }
  public void display(){
  strokeWeight(10);
  line(x,y,xFinal,yFinal);
  }
}
