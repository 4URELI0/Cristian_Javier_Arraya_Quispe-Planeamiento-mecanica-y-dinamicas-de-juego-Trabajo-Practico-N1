Circulo circulo;

void setup() {
  size(1600, 500);
  circulo = new Circulo(100, 100, 24);
}
void draw() {
  background(#E5FFF7);  
  circulo.actualizar();
  circulo.mostrar();
}
