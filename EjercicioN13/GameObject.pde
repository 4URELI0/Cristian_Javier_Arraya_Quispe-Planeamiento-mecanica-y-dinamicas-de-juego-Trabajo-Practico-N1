public abstract class GameObject{
  
protected PVector pos;

GameObject(){
}
GameObject(PVector pos){
this.pos = pos;
}
/*Metodos accesores*/
public PVector getPosicion(){
return this.pos;
}

public void setPosicion(PVector pos){
this.pos = pos;
}

}
