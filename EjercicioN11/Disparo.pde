class Disparo extends GameObject{
//Variables
int velocidad;//Velocidad del disparo
PVector direccion;//Direccion del disparo
PVector posicion;//Posicion de donde va a iniciar el disparo
PImage imagenDisparo;

 /*Constructor*/
 public Disparo(PVector posicion,PVector direccion, PImage imagenDisparo,int altoImg,int anchoImg, int velocidad){
 this.direccion = direccion.normalize();//El disparo se movera siempre a la misma velocidad 
 this.posicion = posicion;
 this.imagenDisparo = imagenDisparo;
 this.altoImg = altoImg;
 this.anchoImg = anchoImg;
 this.velocidad = velocidad;
 }
 
 public void render(){
 imageMode(CENTER);
 image(this.imagenDisparo, this.posicion.x,this.posicion.y,this.altoImg,this.anchoImg);
 }
 
 /*Movimiento del disparo*/
 void move(){
 this.posicion.add(PVector.mult(this.direccion,this.velocidad));
 }
}
