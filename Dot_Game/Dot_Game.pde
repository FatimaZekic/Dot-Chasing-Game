int score = 0;
float x = random(600);
float y = random(600);
int circx = 600;
int circy = 600;
int x1 = mouseX;
int y1 = mouseY;
boolean game = true;
float speed = 2;

void setup() {
  size(600, 600);
}

void draw() {
  if (game==true) {
    layout();
    ball();
    collision();
    folow();
  }
}

void keyPressed(){
  if (key=='r'){
    game=true;
    circx = 0;
    circy = 0;
    score = 0;
    layout();
    folow();
    ball() ;
  }
}

void folow() {
  if (mouseX > circx) {
    circx+=score/2;
  }
  if (mouseY > circy) {
    circy+=score/2;
  }
  if (mouseX < circx) {
    circx-=score/2;
  }
  if (mouseY < circy) {
    circy-=score/2;
  }
}
void layout() {
  background(0);
  textSize(20);
  fill(255);
  text("score = "+ score, 30, 30);
}

void ball() {
  noStroke();
  fill(0, 0, 255);
  ellipse(mouseX, mouseY, 20, 20);
  fill(0, 255, 0);
  ellipse(x, y, 10, 10);
  fill(255, 0, 0);
  ellipse(circx, circy-20, 40, 40);
}

void collision() {
  if (x>mouseX-10 && x<mouseX+10 && y<mouseY+10 && y>mouseY-10) {
    x=int(random(520));
    y=int(random(400));
    score = score+1;
    circx+=10;
    circy+=10;
  }
    if (circx>mouseX-20 && circx<mouseX+20 && circy<mouseY+20 && circy>mouseY-20) {
    background(255);
    textSize(50);
    fill(255, 0, 0);
    text("U done ded", 160, 250);
    textSize(50);
    fill(0, 0, 255);
    text("Press r to Restart", 100, 400);
    game = false;
    }
  }
  
