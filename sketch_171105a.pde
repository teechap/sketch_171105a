ArrayList<RotatingSquare> squares;
import de.looksgood.ani.*;

int gridSkip;
float squareSize;

void setup() {
  size(1000,1000);
  strokeCap(SQUARE);
  Ani.init(this);
  Ani.setDefaultTimeMode(Ani.FRAMES);
  gridSkip = width/10;
  float circleRadius = float(gridSkip)/2.0;
  squareSize = (sq(circleRadius) + sq(circleRadius)) - 2600;
  
  squares = new ArrayList<RotatingSquare>();
  for (int x = 0; x <= width; x += gridSkip) {
    for (int y = 0; y <= height; y += gridSkip) {
      squares.add(new RotatingSquare(squareSize, x, y));
    }
  }
  Ani.to(this, 30 * 60 /*30 sec @ 60 fps*/, "squareSize", sqrt(2 * sq(circleRadius)));
}

void draw() {
  background(0);
  
  for (RotatingSquare s: squares) {
    s.update(squareSize);
    s.display();
  }
  
}