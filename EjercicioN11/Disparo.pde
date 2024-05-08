class Disparo{
//Variables
int x;
int y;
int d;//Diametro de la bala que sera un circulo
int velocidad;//Velocidad del disparo

 /*Constructor*/
 Disparo(int inicioX, int inicioY){
 x = inicioX;
 y = inicioY;
 d = 5;
 velocidad = 5;
 }
 
 public void render(){
 stroke(#FFF700);
 circle(x, y, d);
 }
 
 /*Movimiento del disparo*/
 void move(){
 x += velocidad;
 }
}
