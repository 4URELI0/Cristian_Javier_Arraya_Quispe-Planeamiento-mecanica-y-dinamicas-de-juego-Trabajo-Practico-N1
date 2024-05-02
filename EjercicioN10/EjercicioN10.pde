/*Declaracion de variable*/
Vector vectorA;
Vector vectorB;
/*Variables que tendran el resultado de los nuevos vectores*/
Vector vectorResultante1;//suma
Vector vectorResultante2;//resta
public void setup(){
size(500,500);
/*Se le asigna valores a las variables*/
vectorA = new Vector(new PVector(110,110), new PVector(100,140));
vectorB = new Vector(new PVector(110,110), new PVector(100,200));
/*Almacenamos el resultado en la variable vectorResultante1 y vectorResultante2*/
vectorResultante1 = vectorA.sumaVectores(vectorB);
vectorResultante2 = vectorA.restaVectores(vectorB);
}
public void draw(){
background(0);
stroke(#F59A07);
vectorA.display();
stroke(#F5077A);
vectorB.display();
/*Linea verde es el nuevo vector de la suma de los dos vectores*/
stroke(#11F01D);
vectorResultante1.display();
/*Linea azul es el nuevo vector de la resta de los dos vectores*/
stroke(#1711F0);
vectorResultante2.display();
}
