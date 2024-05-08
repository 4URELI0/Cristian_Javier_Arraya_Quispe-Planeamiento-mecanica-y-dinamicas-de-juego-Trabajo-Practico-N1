public abstract class GameObject{
  
protected PImage imagen;
protected PVector pos;
protected int altoImg;
protected int anchoImg;

GameObject(){
}
GameObject(PImage imagen, PVector pos, int altoImg, int anchoImg){
this.imagen = imagen;
this.pos = pos;
this.altoImg = altoImg;
this.anchoImg = anchoImg;
}
/*Metodos accesores*/
/*GETTERS*/
public PVector getPosicion(){
return this.pos;
}
public int getAltoImg(){
return this.altoImg;
}
public int getAnchoImg(){
return this.anchoImg;
}
/*SETTERS*/
public void setPosicion(PVector pos){
this.pos = pos;
}
public void setAltoImg(int altoImg){
this.altoImg = altoImg;
}
public void setAnchoImg(int anchoImg){
this.anchoImg = anchoImg;
}

}
