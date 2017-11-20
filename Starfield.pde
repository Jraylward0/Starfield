//Jacob Aylward
//https://github.com/Jraylward0
//Starfield main


/*
* Create array 'stars' in class Stars()
* Stars() contains 800 elements
* @return
* @param
*/
Star[] stars = new Star[800];

/*
* variable 'speed' created
* @return
* @param
*/
float speed;

void setup() {
  size(600,600);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
/*
* draw() class
* @return
* @param
*/
void draw() {
  speed = map(mouseX, 0, width, 0, 50);
  background(0);
  translate(width/2, height/2);
  for(int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}
  