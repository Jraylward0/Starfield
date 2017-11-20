//Jacob Aylward
//https://github.com/Jraylward0
//Starfield Star

/*
* Star Class
* @return
* @param
*/
class Star {
  float x; //Star variable x
  float y; //Star variable y
  float z; //Star variable z, used to denote position
  float pz; //Star variable pz, stores previous 'z' value (frame)
  
  Star() {
    x = random(-width/2, width/2); //placed the values in variable x
    y = random(-height/2, height/2); //placed the values in variable y
    z = random(width/2); //placed the values in variable z
    pz = z; //previous position of variable z is stored in pz
  }
  
  void update() {
    z = z - speed;
    if(z < 1) {
      z = width/2;
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      pz = z;
    }
  }
  
  void show() {
    fill(255);
    noStroke();
    float sx = map(x / z, 0, 1, 0, width/2);
    float sy = map(y / z, 0, 1, 0, height/2);;
    float r = map(z, 0, width/2, 16, 0); //z value is used to increase the star size 0-16
    ellipse(sx, sy, r, r);
    float px = map(x / pz, 0, 1, 0, width/2); //pz value is used to map out the 'line'
    float py = map(y / pz, 0, 1, 0, height/2);
    pz = z;
    stroke(255);
    line(px, py, sx, sy);
  }
}