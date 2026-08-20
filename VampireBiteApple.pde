void setup() {
  size(800, 500);
}

void draw() {
  background(230);

  // Vampire head
  fill(240);
  stroke(0);
  ellipse(150, 250, 80, 100);

  // Vampire hair
  fill(0);
  arc(150, 225, 80, 60, PI, TWO_PI);

  // Eyes
  fill(255, 0, 0);
  ellipse(135, 245, 10, 10);
  ellipse(165, 245, 10, 10);

  // Mouth
  stroke(0);
  line(135, 270, 165, 270);

  // Fangs
  fill(255);
  triangle(140, 270, 147, 270, 144, 285);
  triangle(153, 270, 160, 270, 157, 285);

  // Body
  fill(60);
  rect(120, 300, 60, 100);
}
