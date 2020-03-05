//Flappy code 
bird b = new bird ();
pillar [] p = new pillar [3];
boolean end=false;
boolean  intro=true;
int score=0;




void setup () {
  size (500, 800);
  for (int i =0; i<3; i++) {
    p[i]=new pillar(i);
  }
}
void draw ()
{
 background(65);
  if (end) {
    b.move();
  }
  b.drawBird();
  if (end) {
    b.drag();
  }
  b.checkCollisions();
  for (int i = 0; i<3; i++) {
    p[i].drawPillar();
    p[i].checkPosition();
  }
  fill(0);
  stroke(255);
  textSize(32);
  if (end) {
    rect(20, 20, 110, 50);
    fill(255);
    text(score, 30, 58);
  } else {
    rect(150, 100, 200, 50);
    rect(150, 200, 200, 50);
    fill(255);
    if (intro) {
      text("Flappy Code", 155, 140);
      text("Click to Play", 155, 240);
    } else {
      text("game over", 170, 140);
      text("score", 180, 240);
      text(score, 280, 240);
    }
  }
}


  
