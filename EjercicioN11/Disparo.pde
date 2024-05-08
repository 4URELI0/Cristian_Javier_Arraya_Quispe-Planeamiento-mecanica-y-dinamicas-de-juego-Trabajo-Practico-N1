class Disparo{
//Variables
int x;
int y;
int d;//Diametro de la bala que sera un circulo
int velocidad;//Velocidad del disparo
PVector direccion;//Direccion del disparo

 /*Constructor*/
 Disparo(int inicioX, int inicioY, PVector direccion, int velocidad){
 x = inicioX;
 y = inicioY;
 d = 5;
 this.direccion = direccion.normalize();//El disparo de movera siempre a la misma velocidad
 this.velocidad = velocidad;
 }
 
 public void render(){
 stroke(#FFF700);
 circle(x, y, d);
 }
 
 /*Movimiento del disparo*/
 void move(){
 x += direccion.x * velocidad;
 y += direccion.y * velocidad;
 }
}
