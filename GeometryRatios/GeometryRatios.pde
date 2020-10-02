//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
int triangle1X1, triangle1Y1, triangle1X2, triangle1Y2, triangle1X3, triangle1Y3;
int triangle2X1, triangle2Y1, triangle2X2, triangle2Y2, triangle2X3, triangle2Y3;
int triangle3X1, triangle3Y1, triangle3X2, triangle3Y2, triangle3X3, triangle3Y3;
int triangle4X1, triangle4Y1, triangle4X2, triangle4Y2, triangle4X3, triangle4Y3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
float measlesX, measlesY, measlesDiameter;
color red = #FF0303;
color measlesColor = red;
color white = 255;
color colorReset = white;
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow, purple;

void setup() {
  size (900, 600);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  //
  
  //
  population();
  //
  background(reset);
  
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //faceDraw();
  
}//End setup

void draw() {
  
  if (mouseX>width*15/16 && mouseX<width*16/16 && mouseY>height*0/14 && mouseY<height*1/14) { //Button Hoverover
    buttonColour = red; //Hoverover
  } else {
    buttonColour = white;
  }// End IF
  fill(buttonColour); //Purple all the time, Yellow with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  
  measlesX = random(width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY = random(height);
  measlesDiameter = random(height*1/70, height*1/30);
  fill(measlesColor);
  //Parameters are randomly set ;)
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  triangle(triangle1X1, triangle1Y1, triangle1X2, triangle1Y2, triangle1X3, triangle1Y3);
  triangle(triangle2X1, triangle2Y1, triangle2X2, triangle2Y2, triangle2X3, triangle2Y3);
  triangle(triangle3X1, triangle3Y1, triangle3X2, triangle3Y2, triangle3X3, triangle3Y3);
  triangle(triangle4X1, triangle4Y1, triangle4X2, triangle4Y2, triangle4X3, triangle4Y3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  
  
  
  
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>width*15/16 && mouseX<width*16/16 && mouseY>height*0/14 && mouseY<height*1/14 ) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
