class Dot {
  PVector position;
  PVector velocity;

  int diameter = 35;
  int bounceTimer = 10;
  int bounceWait = -1;
  Tile[] bouncers = new Tile[2];
  int speed = 13;

  Dot(Tile t1, Tile t2, int velX) {
    position = new PVector(t1.pixelPos.x + tileSize/2, t1.pixelPos.y + tileSize/2);
    velocity = new PVector(velX*speed, 0);
    bouncers[0] = t1;
    bouncers[1] = t2;
  }

  //------------------------------------------------------------------------------------------------------------


  void move() {

    for (int i = 0; i < bouncers.length; i++) {
      if (bounceTimer < 0 && dist(position.x, position.y, bouncers[i].pixelPos.x + tileSize/2, bouncers[i].pixelPos.y + tileSize/2) < speed) {
        bounceTimer = 10;
        bounceWait= 1;
      }
    }
    if (bounceWait ==0) {
      velocity.x *= -1;
    }
    position.add(velocity);
    bounceTimer --;
    bounceWait --;
  }


  void show() {
    fill(0, 0, 255);
    strokeWeight(8);
    ellipse(position.x, position.y, diameter, diameter);
  }
}