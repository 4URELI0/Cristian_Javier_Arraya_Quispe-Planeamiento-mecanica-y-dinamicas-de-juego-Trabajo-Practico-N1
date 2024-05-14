Circulo circulo;
Piso piso;
void setup() {
  size(500, 500);
  circulo = new Circulo(100, 100, 24);
  piso = new Piso(0,500,500,500);
}
void draw() {
  background(#E5FFF7); 
  /*Va a actualizar la velocidad de la pelota*/
  circulo.actualizar();
  /*Va a mostrar la pelota*/
  circulo.mostrar();
  /*Dibujamos el circulo*/
  piso.display();
}
