void population() {
  faceX = width/2;
  faceY = height/2;
  faceDiameter = height;
  leftEyeX = width*3/8;
  leftEyeY = height*5/16;
  leftEyeDiameter = height/9;
  rightEyeX = width*5/8;
  rightEyeY = height*5/16;
  rightEyeDiameter = height/9;
  noseX1 = width/2;
  noseY1 = height*2/5;
  noseX2 = width*7/16;
  noseY2 = height*6/10;
  noseX3 = width*9/16;
  noseY3 = noseY2;
  mouthX1 = leftEyeX;
  mouthY1 = height*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthThick = 15;
  reset = 1;
  measlesX = random(width);
  measlesY = random(height);
  measlesDiameter = random(height*1/20, height*1/10);
}// End Population