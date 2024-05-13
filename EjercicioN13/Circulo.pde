class Circulo {
  PVector posicion; // Ubicación del círculo
  PVector velocidad; // Velocidad del círculo
  PVector gravedad; // Gravedad que afecta la aceleración del círculo
  int radio; // Radio del círculo
  PVector normal = new PVector(0, 1);//Vector que apunta hacia abajo
  Vector normalizado;
  Vector reflexion;
  // Constructor parametrizado
  Circulo(int x, int y, int radio) {
    posicion = new PVector(x, y);
    velocidad = new PVector(1.5, 2.1);
    gravedad = new PVector(0, 0.2);
    this.radio = radio;
    this.normalizado = new Vector();
    this.reflexion = new Vector();
  }
  
  // Método para mostrar el círculo
  void mostrar() {
    fill(#FA7203);
    ellipse(posicion.x, posicion.y, radio*2, radio*2);
    mostrarNormal();
    mostrarReflexion();
  }
  
  // Método para actualizar la posición y velocidad del círculo
public  void actualizar() {
    // Agregar la velocidad a la posición
    posicion.add(velocidad);
    // Agregar la gravedad a la velocidad
    velocidad.add(gravedad); 
    
/*-----Colision contra los bordes de la pantalla-------*/
    // Rebotar en los bordes
    if (posicion.x > width - radio || posicion.x < radio) {
      velocidad.x *=-1;
    }
    if (posicion.y > height - radio) {
      // Reducir ligeramente la velocidad cuando golpea el fondo de la ventana
      velocidad.y *= -0.90;
      posicion.y = height - radio;            
    }
}
public void mostrarNormal(){
   normalizado = new Vector(posicion, normal);//Creamos un nuevo vector que inicie desde la posicion del circulo hasta el vector normal
   normalizado.display();//Dibujamos el nuevo vector normalizado
}
 public void mostrarReflexion(){
   PVector direccion = new PVector(velocidad.x,velocidad.y).normalize();//Hacemos un vector direccion y la normalizamos
   reflexion = new Vector(posicion, direccion);//El vector reflexion va a iniciar desde la posicion del circulo hasta el vector direccion
   println("Posicion: "+posicion);//Imprimimos el resultado de la posicion
   println("Direccion: "+direccion);//Imprimimos el resultado de la direccion
   reflexion.display();//dibujamos el vector reflexion
 }

}
