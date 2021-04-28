//Practica 18
//Animacion Simple
//Mat.18181155, Medrano Pulido Ivana


PImage logo;
PShape esfera;
float angulo=0;

void setup() {
 size(500, 500, P3D);
 noStroke();
 sphereDetail(100);
 logo = loadImage("vangogh.jpg");
 esfera = createShape(SPHERE, 150);
 esfera.setTexture(logo);
}
void draw() {
 background(color(#E5DC82));
 // Light the bottom of the sphere
 directionalLight(80, 120, 140, 0, 0, -1);
 
 // Hace que el punto de luz siga al puntero del ratón
spotLight(102, 153, 204, mouseX, mouseY, 600, 0, 0, -1, PI/2, 600);
 translate(250, 250, 0);
 
 //La animacion aqui gira entorno al eje X
 //rotateY(angulo); // Gira sobre si mismo
 //angulo+=0.03;
 //translate(60, 0, 0); // Se mueve sobre el eje X
 
 
 
 //Reto
 //Le modificamos pra que gire entorno al eje Y
 
 rotateX(angulo); // Gira sobre si mismo
 angulo-=0.05;
 translate(-20, 0, 0); // Se mueve sobre el eje Y
 
 
 shape(esfera);
}
