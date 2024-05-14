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
  
  // Método para actualizar la posición y velocidad del círculo
public  void actualizar() {
    // Agregar la velocidad a la posición
    pos.add(velocidad);
    // Agregar la gravedad a la velocidad
    velocidad.add(gravedad);
}
}
