class Circulo extends GameObject {
  PVector velocidad; // Velocidad del círculo
  PVector gravedad; // Gravedad que afecta la aceleración del círculo
  int radio; // Radio del círculo
  float reflexionProductoPunto; 
  PVector pos;
 // Constructor parametrizado
  Circulo(int x, int y, int radio) {
    pos = new PVector(x, y);
    velocidad = new PVector(1.5, 2.1);
    gravedad = new PVector(0, 0.2);
    this.radio = radio;
  }
  
  // Método para mostrar el círculo
  void mostrar() {
    fill(#FA7203);
    ellipse(pos.x, pos.y, radio*2, radio*2);  
  }
  /*Metodos accesores*/
public PVector getVelocidad(){
return this.velocidad;
}

public void setVelocidad(PVector velocidad){
this.velocidad = velocidad;
}

  
  // Método para actualizar la posición y velocidad del círculo
public  void actualizar() {
    // Agregar la velocidad a la posición
    pos.add(velocidad);
    // Agregar la gravedad a la velocidad
    velocidad.add(gravedad);
}
public void reflexion(Vector vectorArriba){
/*Le vamos a indicar una colision para que la pelota no se vaya hacia abajo*/
if(pos.y > 500){
  /*Aplicamos la formula de la reflexion por partes*/
reflexionProductoPunto = PVector.dot(vectorArriba.getDestino(),this.getVelocidad());//Obtenemos el producto punto vectorArriba y con la velocidad que es de la pelota

PVector vectorNormalizado = vectorArriba.getDestino().normalize();//Normalizamos al vector arriba, es parte de la formula

/*Realizamos distributiva*/
float multiplicacionPorPunto = 2 * reflexionProductoPunto;
PVector distributiva = PVector.mult(vectorNormalizado,multiplicacionPorPunto);

PVector resta = PVector.sub(this.getVelocidad(),distributiva);//Realizamos la resta entre la velocidad del circulo y la distributiva
velocidad = resta;//Le asignamos el resultado de la resta a la velocidad
}
}
}
