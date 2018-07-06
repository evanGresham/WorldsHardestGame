Tile[][] tiles = new Tile[22][10];
ArrayList<Dot> dots = new ArrayList<Dot>();
int xoff  = 80;
int yoff = 200;
int tileSize = 80;

void setup() {
  fullScreen();
  for (int i = 0; i< tiles.length; i++) {
    for (int j = 0; j< tiles[0].length; j++) {
      tiles[i][j] = new Tile(i, j, false, false);
    }
  }
  setLevel1Walls();
  setLevel1Goal();
  setLevel1SafeArea();
  setEdges();
  setDots();
  
}



void draw() {
  background(180, 181, 254);

  for (int i = 0; i< tiles.length; i++) {
    for (int j = 0; j< tiles[0].length; j++) {
      tiles[i][j].show();
    }
  }

  for (int i = 0; i< tiles.length; i++) {
    for (int j = 0; j< tiles[0].length; j++) {
      tiles[i][j].showEdges();
    }
  }
  
  
  for(int i = 0 ; i < dots.size(); i ++){
    dots.get(i).move();
    dots.get(i).show(); 
    
    
  }
}



void mousePressed() {
  //int x = (mouseX - xoff )/tileSize;
  //int y = (mouseY - yoff )/tileSize;


  //tiles[x][y].enemyStart = !tiles[x][y].enemyStart;
}


void keyPressed() {
  //switch(key) {
  //case ' ':
  //  for (int i = 0; i< tiles.length; i++) {
  //    for (int j = 0; j< tiles[0].length; j++) {
  //      if (tiles[i][j].enemyStart) {
  //        println("tiles[" + i + "][" + j +"].enemystart = true;");
  //      }
  //    }
  //  }
  //  break;
  //}
}