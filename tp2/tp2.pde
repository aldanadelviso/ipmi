//Aldana del Viso
//tp2 - comision 3


//VARIABLES

PImage imagen1, imagen2, imagen3, imagen4, imagen5;
String texto1, texto2, texto3, texto4, texto5, botonComenzar, botonIncio ;
PFont tipografia;
int pantalla, segundos, letraTam, posFinal, py;
float tono, posX, posY;
boolean comenzo;


void setup() {
  size(640, 480);
  tipografia= loadFont("KozGo.vlw");
  textFont(tipografia);
  textSize(40);
  pantalla=1;
  segundos=0;
  py=height;
  posX=0;
  posY=0;
  posFinal=640;
  letraTam=300;
  comenzo=false;
  botonComenzar= "COMENZAR";
  botonIncio= "INICIO";
  
  //Inicialización Pantalla1
  imagen1 =loadImage("imagen1.jpeg");
  texto1="Daniel Rozin,\nes un artista\nconocido por crear \nespejos mecánicos.";
   
  //Inicialización Pantalla2
  imagen2 =loadImage("imagen2.jpeg");
  texto2="Crea instalaciones y esculturas \nque tienen la capacidad única \nde cambiar y responder a la \npresencia y el punto de vista \ndel espectador.";
  
  //Inicialización Pantalla3
  imagen3 =loadImage("imagen3.jpeg");
  texto3="Creó una obra \nhecha con 921 bolas similares \na las de un árbol de Navidad \nsobre una estructura \nde aluminio.";
   
  //Inicialización Pantalla4
  imagen4 =loadImage("imagen4.jpeg");
  texto4="La obra oculta además 819 \nmotores, un panel electrónico, \nuna cámara de vídeo y un \nordenador que analiza la \nimágen que el espejo \ntiene enfrente.";
   
  //Inicialización Pantalla5
  imagen5=loadImage("imagen5.jpeg");
  texto5="El resultado es una especie de animación que funciona como espejo distorsionador y que hace reflexionar sobre cómo la tecnología define nuestro mundo.";
 
 }

void draw() {
  background(255);
  fill(255);
  
  if (pantalla==1){
    //Pantalla 1
    image(imagen1,0,0, width, height);
    
    if(comenzo){
      text(texto1,posX,280);
      if(posX < 260){
         posX++;
      }
    }else{      
      // mostrar el boton de comenzar
      if(mouseX>180 && mouseX<180+270
        && mouseY >180 && mouseY <180+130){ 
       // boton blanco, texto negro al pasar el mouse 
        fill(255);
        rect(180, 180, 270, 130);
        fill(0);
        text(botonComenzar,210,260);
      } else {
        // boton negro, texto blanco al pasar el mouse 
        fill(0);
        rect(180, 180, 270, 130);
        fill(255);
        text(botonComenzar,210,260);
      }
     
    }

    
  } else if (pantalla == 2){
      //Pantalla 2
      image(imagen2,0,0, width, height); 
      text(texto2,50, posY);
      if(posY < 250){
        posY+=1;
      }
     
  } else if (pantalla == 3){
      //Pantalla 3
      image(imagen3,0,0,width, height);   
      float tono = map(py, height, 100, 0, 255);
      fill(255, tono); 
      if (py>100) {
        py--;
      }   
      text(texto3,50,100);   
      
  } else if (pantalla == 4){
      //Pantalla 4
      image(imagen4,0,0,width, height);
      textSize(letraTam);
      text(texto4,82,150);
      if(letraTam>40){
        letraTam-=4;
      }
  } else {
      //Pantalla 5
      image(imagen5,0,0,width, height);
      text(texto5,posFinal,435);
      if(posFinal>-2900){
          posFinal-=3;
      }else{
        // mostrar el boton de volver al inicio
        if ( mouseX>475 && mouseX<475+150
        && mouseY >380 && mouseY<380+80 ) {
         // boton blanco, texto negro al pasar el mouse 
          fill(255);
          rect(475, 380, 150, 80);
          fill(0);
          text(botonIncio,495,435);
        } else {
          // boton negro, texto blanco al pasar el mouse 
          fill(0);
          rect(475, 380, 150, 80);
          fill(255);
          text(botonIncio,495,435);
        }
      }
    }
  // conteo de segundos para pasar de pantalla
  if (pantalla!=5 && comenzo){
    if(frameCount%60 ==0){
      segundos = segundos +1;
    }
    if(segundos==7){
      pantalla=pantalla+1;
      segundos=0;
    } 
  }
  
}
 

void mousePressed (){
      if(pantalla==1){
        if(mouseX>180 && mouseX<180+270
          && mouseY >180 && mouseY <180+130){ 
          comenzo=true;
        }
      } else if(pantalla==5){
        if(mouseX>475 && mouseX<475+150
          && mouseY >380 && mouseY <380+80){ 
            // Vuelvo a setear las variables en sus valores iniciales para volver a iniciar la presentación
            pantalla=1;
            segundos=0;
            py=height;
            posX=0;
            posY=0;
            posFinal=640;
            letraTam=300;
            comenzo=false;
        }
       }
}
  


 
  
