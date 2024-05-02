/*Declaracion de variable*/
Vector vectorA;
Vector vectorB;
Vector vectorResultante;//suma
Vector vectorResultante2;//resta
public void setup(){
size(500,500);
/*Se le asigna valores a las variables*/
vectorA = new Vector(new PVector(width/2,height/2), new PVector(100,140));
vectorB = new Vector(new PVector(width/2,height/2), new PVector(100,200));
vectorResultante = vectorA.sumaVectores(vectorB);
vectorResultante2 = vectorA.restaVectores(vectorB);
}
public void draw(){
background(#FFFFFF);
vectorA.display();
vectorB.display();
vectorResultante.display();
vectorResultante2.display();
}
