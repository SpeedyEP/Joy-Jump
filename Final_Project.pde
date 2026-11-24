class Platform {
  float posX, posY;
  float w = random(15, 46);
  float l = random(5, 11);
  
  Platform(float x, float y){
    posX = x;
    posY = y;
  }
  
  void display(){
    fill(150); // filling platform grey but can change later
    rect(posX, posY, w, l);
  }
  
}

ArrayList<Platform> platforms = new ArrayList<Platform>();




void setup() {
  size(400, 600);
  
  for (int i = 0; i < 15; i++){
    platforms.add(new Platform(random(width), random(height)));
  }
}


void draw(){
  background(255);

  for (Platform p : platforms) {
    p.display();
  }
}
