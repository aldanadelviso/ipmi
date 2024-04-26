//del Viso Aldana Comision 3

PImage fotoJuan;

void setup(){
size (800,400);
background(255);
fotoJuan = loadImage("fotoJuan.jpeg");

}

void draw(){
image(fotoJuan,0,0,400,400);
noStroke();

//orejas
fill(198,140,98);
ellipse(535,144,24,32); //derecha
ellipse(677,144,24,32);//izquierda

//cuello
rect(570,195,78,78);

//brazo
triangle(506,376,440,400,504,400); //derecho
triangle(742,356,751,400,700,400); //izquierdo

//camisa
stroke(134,174,189);
fill(214,233,246);
beginShape();
vertex(553,196);
vertex(544,215);
vertex(468,253);
vertex(446,315);
vertex(440,400);
vertex(505,376);
vertex(505,339);
vertex(505,400);
vertex(699,400);
vertex(695,360);
vertex(700,398);
vertex(749,348);
vertex(709,241);
vertex(642,202);
vertex(646,217);
vertex(626,250);
vertex(603,267);
vertex(600,243);
vertex(553,196);
endShape();

//bolsillo
line(644,318,686,315);

//camisa solapa de botones
noStroke();
fill(174,210,228);
beginShape();
vertex(614,259);
vertex(593,269);
vertex(588,448);
vertex(600,460);
vertex(614,453);
endShape();

//botones
fill(242,220,184);
ellipse(590,247,11,11);
ellipse(603,291,11,11);
ellipse(603,338,11,11);
ellipse(603,376,11,11);
ellipse(665,326,11,11);

//cabeza
fill(196,145,111);
ellipse(608,133,142,193);

//ojos grande
fill(255);
ellipse(578,120,29,22); //derecho
ellipse(641,121,29,22); //izquierdo

//ojos chico
fill(0);
ellipse(581,120,19,15); //derecho
ellipse(644,121,19,15); //izquierdo

//nariz
fill(198,140,98);
ellipse(612,154,37,21);
triangle(612,135,594,152,630,152);
fill(191,131,90);
ellipse(605,156,6,5);
ellipse(619,156,6,5);

//boca
fill(178,76,67);
ellipse(615,184,39,25);
fill(0);
ellipse(615,183,14,9);

//mejillas
fill(203,155,124);
ellipse(560,167,30,30); //derecha
ellipse(656,167,30,30); //izquierda

//cejas
fill(196,145,111);
stroke(0);
bezier(552,113,556,99,580,92,592,102);// derecha
bezier(624,103,637,94,652,98,662,108);// izquierda

//pelo
fill(0);
beginShape();
curveVertex(680,139);
curveVertex(680,139);
curveVertex(660,24);
curveVertex(546,30);
curveVertex(528,144);
curveVertex(528,144);
vertex(528,146);
vertex(539,130);
vertex(546,133);
vertex(553,76);
vertex(586,50);
vertex(578,71);
vertex(647,52);
vertex(670,106);
vertex(679,133);
endShape();


}
