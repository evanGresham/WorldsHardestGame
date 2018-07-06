class Tile {
  PVector matrixPos;
  PVector pixelPos;
  boolean wall;
  boolean goal;
  boolean safe;
  boolean enemyStart =false;
  ArrayList<Integer> wallSides = new ArrayList<Integer>();


  Tile(int x, int y, boolean w, boolean g) {
    matrixPos = new PVector(x, y);
    pixelPos = new PVector(x*tileSize+xoff, y*tileSize+yoff);
    wall = w;
    goal = g;
  }


  void show() {
    if ((matrixPos.x +matrixPos.y) % 2 ==0) {
      fill(247,247,255);
    } else {
      fill(230,230,255);
    }
    if (wall) {
      fill(180, 181, 254);
    }
    if (goal || safe) {
      fill(181, 254, 180);
    }
    noStroke();
    rect(pixelPos.x, pixelPos.y, tileSize, tileSize);
  }

  void showEdges() {
    int weight =0;
    for (int i = 0; i< wallSides.size(); i++) {
      stroke(0);
      strokeWeight(8);
      switch(wallSides.get(i)) {
      case 4:
        line(pixelPos.x-weight, pixelPos.y, pixelPos.x+tileSize+weight, pixelPos.y);
        break;
      case 1:
        line(pixelPos.x+tileSize, pixelPos.y-weight, pixelPos.x+tileSize, pixelPos.y+tileSize+weight);        
        break;
      case 2:
        line(pixelPos.x-weight, pixelPos.y+tileSize, pixelPos.x+tileSize+weight, pixelPos.y+tileSize);        
        break;
      case 3:
        line(pixelPos.x, pixelPos.y-weight, pixelPos.x, pixelPos.y+tileSize+weight);        
        break;
      }
    }
  }
}