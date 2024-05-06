private Vector vectorA;
private Vector vectorB;
private Vector vectorC;
private Vector vectorD;
/*Variables que tendran el resultado de los nuevos vectores*/
//Vector vectorResultante1;//suma
//Vector vectorResultante2;//resta
public void setup(){
/*Puntos*/
PVector puntoA = new PVector(width/2,height/2);//Origen de vectorA
PVector puntoB = new PVector(0,-200);
PVector puntoC = new PVector(100,-100);

size(1000,1000);
/*Se le asigna valores a las variables*/
vectorA = new Vector(puntoA, puntoB);

vectorB = new Vector(puntoA, puntoC);

vectorC = vectorA.sumaVectores(vectorB);
/*Sumamos el origen de vectorA con destino de vectorA, para pocisionarme en donde termina el vectorA y se dibuja hacia el destino de vectorB*/
vectorD = new Vector(PVector.add(vectorA.getOrigen(),vectorA.getDestino()),vectorB.getDestino());
/*Almacenamos el resultado en la variable vectorResultante1 y vectorResultante2*/
//vectorResultante1 = vectorA.sumaVectores(vectorB);
//vectorResultante2 = vectorA.restaVectores(vectorB);
}
public void draw(){
background(0);
/*VectorA es la linea naranja*/
stroke(#F59A07);
vectorA.display();
/*VectorB es la linea roja*/
stroke(#F5077A);
vectorB.display();
/*Linea azul es el nuevo vector de la resta de los dos vectores*/
stroke(#28FF0D);
vectorC.display();
stroke(#0DDDFF);
vectorD.display();
//vectorResultante2.display();
}
