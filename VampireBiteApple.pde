//Vampire
int vampireX = 150;
int vampireY = 250;
int speed = 5;
//Apple
int appleX = 650;
int appleY = 300;

int biteCount = 0;


void setup() {
  size(800, 500);
}

void draw() {
  background(230);

// Vampire
  // Vampire head
  fill(240);
  stroke(0);
  ellipse(vampireX,vampireY,80,100);

  // Vampire hair
  fill(0);
  arc(vampireX, vampireY - 25, 80, 60, PI, TWO_PI);

  // Eyes
  fill(255, 0, 0);
  ellipse(vampireX-15,vampireY-5,10,10);
  ellipse(vampireX+15,vampireY-5,10,10);

  // Mouth
  stroke(0);
  line(vampireX-15, vampireY+20,vampireX+15, vampireY+20);

  // Fangs
  fill(255);
  triangle(vampireX - 10, vampireY + 20,
    vampireX - 3, vampireY + 20,
    vampireX - 7, vampireY + 35);
  triangle(vampireX + 3, vampireY + 20,
    vampireX + 10, vampireY + 20,
    vampireX + 7, vampireY + 35);

  // Body
  fill(60);
  rect(vampireX-30,vampireY+50,60,100);

// Apple
  //Main part
  fill(220, 0, 0);
  stroke(0);
  ellipse(appleX, appleY, 70, 70);

  // Apple stem
  stroke(80, 50, 20);
  line(650, 265, 650, 245);
  
  // Apple leaf
  fill(0, 180, 0);
  ellipse(665, 250, 25, 12);
  
  //Vampire Movement
  if(keyPressed){

  if(keyCode == LEFT){
    if(vampireX > 40){
      vampireX -= speed;
     }
   }

  if(keyCode == RIGHT){
    if(vampireX < width - 40){
      vampireX += speed;
     }
   }
}
biteApple();
fill(0);
textSize(25);
text("Bites: " + biteCount, 20, 40);
}

//Bite
void biteApple(){

  float distance = dist(
    vampireX,
    vampireY,
    appleX,
    appleY
  );

  if(distance < 100){

    if(keyPressed && key == ' '){

      biteCount++;

    }

  }

}
