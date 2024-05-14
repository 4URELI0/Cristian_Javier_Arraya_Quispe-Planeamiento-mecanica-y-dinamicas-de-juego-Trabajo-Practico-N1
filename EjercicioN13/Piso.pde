class Piso extends GameObject{
  private int x;
  private int y;
  private int xFinal;
  private int yFinal;
  Piso(){}
  Piso(int x, int y, int xFinal, int yFinal){
  this.x = x;
  this.xFinal = xFinal;
  this.y = y;
  this.yFinal = yFinal;
  }
  public void display(){
  strokeWeight(10);
  line(x,y,xFinal,yFinal);
  }
}
