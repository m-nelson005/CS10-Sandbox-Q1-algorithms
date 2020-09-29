// Global Variables
char E = '!';
String start = "Console Start";

int[] number = {1, 22, 333, 444, 5555, 66666, 777777, 8888888, 99999999, 123456789};
//array
int answer = 0;

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight
  println(start + E);
  
  
  
}

void draw() {
//answer = number[0] + number[1] + number[2]+ number[3] + number[4] + number[5] + number[6] + number[7] + number[8] + number[9];
//println(answer);

for(int i=0; i<number.length; i=i+1) {
answer = answer + number[i];
}//End FOR
println(answer);
}//End draw()

void keyPressed () { // Review KeyBoard Input
}//End keyPressed()

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
}//End mousePressed()
